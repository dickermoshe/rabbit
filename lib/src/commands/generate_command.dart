// dart format width=120
import 'dart:async';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type_system.dart';
import 'package:args/command_runner.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:dart_style/dart_style.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:rabbit/src/commands/messages.dart';
import 'package:rabbit/src/config.dart';
import 'package:rabbit/src/utils/progress_isolate.dart';
import 'package:path/path.dart' as p;
import 'package:rabbit/src/utils/reference_resolver.dart';
import 'package:rabbit/src/utils/widget_visitor.dart';
import 'package:collection/collection.dart';

import 'package:recase/recase.dart';

class AddWidgetCommand extends Command<int> {
  AddWidgetCommand({
    required Logger logger,
  }) : _logger = logger {
    argParser.addFlag(
      'validate_config',
      help: 'Validate that the configuration is syntactically correct. '
          'This will not generate any files.',
      defaultsTo: false,
      hide: true,
    );
    argParser.addFlag(
      'validate_libraries',
      help: 'Validate that the configuration contains valid libraries. '
          'This will not generate any files.',
      defaultsTo: false,
      hide: true,
    );
    argParser.addFlag(
      'force',
      help: 'Overwrite the existing files if they exist.',
      defaultsTo: false,
      abbr: 'f',
    );
  }
  final Logger _logger;
  late final Directory projectDir = Directory.current;
  Directory getOutputDir(Config config) {
    return Directory(p.join(projectDir.path, config.outputDir));
  }

  @override
  String get description =>
      'Create the widget wrappers for the widgets provided in the publpec file.';

  @override
  String get name => 'generate';

  AnalysisContext createContext(String dir) {
    return AnalysisContextCollection(includedPaths: [dir]).contextFor(dir);
  }

  /// Log an error to the console
  /// If the logger is in verbose mode, then we will log the error message and the stack trace.
  void _logError(String message, [Object? e, StackTrace? s]) {
    if (_logger.level == Level.verbose) {
      if (e != null) _logger.err(e.toString());
      if (s != null) _logger.err(s.toString());
    } else {
      if (e != null || s != null) {
        _logger.err('Run with --verbose for more details');
      }
    }
    _logger.err(message);
  }

  /// Read the configuration from the pubspec.yaml file.
  /// Throw an error if the configuration is invalid.
  Future<Config?> validateProject() async {
    // Check if the pubspec.yaml file exists.
    final pubspecFile = File(p.join(projectDir.path, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      _logError(pubspecMissingError);
      return null;
    }

    final pubspecText = pubspecFile.readAsStringSync();
    final pubspec = Pubspec.parse(pubspecText);

    // Validate that this is a flutter project.
    if (!pubspec.dependencies.containsKey('flutter')) {
      _logger.err(flutterMissingError);
      return null;
    }

    // Read the configuration from the pubspec.yaml file.
    final Config config;
    try {
      config = checkedYamlDecode(
          pubspecText, (p0) => RootConfig.fromJson(p0!).widgetWrapper);
    } catch (e, s) {
      _logError(invalidConfig, e, s);
      return null;
    }

    // Log the configuration to the console.
    _logger.detail('Configuration: ');
    for (final entry in config.toJson().entries) {
      _logger.detail('${entry.key}: ${entry.value}');
    }

    return config;
  }

  /// Find the library elements for the packages.
  Future<List<Package>?> parseLibraryElements(Config config) async {
    // Create the analysis context for the project directory.
    final context = createContext(p.normalize(projectDir.path));

    // Parse the library elements for the packages.
    final packages = <Package>[];
    _logger.info('Locating widgets: ');
    for (final entry in config.widgets.entries) {
      final packageName = entry.key;
      final widgetNames = entry.value;
      final libraryStopper = await _logger.isolateProgress(packageName);

      // Find the library element for the package.
      final LibraryElement library;
      try {
        final result =
            await context.currentSession.getLibraryByUri(packageName);
        library = (result as LibraryElementResult).element;
      } catch (e, s) {
        _logError(invalidLibraryError(packageName), e, s);
        return null;
      }
      await libraryStopper.stop();

      // Visit the library to find all widgets.
      final Set<ClassElement> classes = {};
      final visitor = WidgetVisitor(context: context, rootLibrary: library);
      library.accept(visitor);

      // If the widget names contain 'all', then we will add all widgets.
      // This is an undocumented feature.
      if (widgetNames.contains('all')) {
        classes.addAll(visitor.seenWidgets);
      } else {
        for (var widgetName in widgetNames) {
          // Locate the widget element for the widget name.
          final matchedClasses = visitor.seenWidgets
              .where((element) => element.name == widgetName)
              .toSet();

          /// If the widget is not found, then we will return early.
          if (matchedClasses.isEmpty) {
            _logger.err(widgetNotFound(packageName, widgetName));
            return null;
          } else if (matchedClasses.length == 1) {
            classes.add(matchedClasses.first);
          } else {
            classes.add(_logger.chooseOne(
                "Found mutiple matches for $widgetName in ${packageName}:",
                display: (e) => "${e.name} : ${e.library.source.uri}",
                choices: matchedClasses.toList()));
          }
        }
      }
      packages.add(Package(
          library: library, classes: classes, packageName: packageName));
    }
    return packages;
  }

  /// Generate the wrapper widget for the widget element.
  Future<cb.Library> generateWrapperWidget(
      Package package,
      ClassElement wElement,
      ConstructorElement conElement,
      Config config) async {
    /// Any widget that has a single `Widget child` field
    /// can wrapped with the PipeableWidget class.
    /// This will allow users to use the Container() >> Text() syntax.
    /// We will only wrap these widgets if the user has set the pipeable
    /// flag to true.
    final pipeableParameter = config.pipeable
        ? conElement.parameters.firstWhereOrNull(_isPipeable)
        : null;

    return cb.Library((l) {
      // Import the necessary libraries
      final Set<String> imports = {
        if (pipeableParameter != null) 'package:rabbit/pipeable.dart',
        package.packageName
      };

      // Guess suplementary imports using the library source uri.
      if (wElement.library.source.uri
          .toString()
          .startsWith('package:flutter/src/material')) {
        imports.add('package:flutter/material.dart');
      }
      if (wElement.library.source.uri
          .toString()
          .startsWith('package:flutter/src/widgets')) {
        imports.add('package:flutter/widgets.dart');
      }
      if (wElement.library.source.uri
          .toString()
          .startsWith('package:flutter/src/cupertino')) {
        imports.add('package:flutter/cupertino.dart');
      }
      if (!wElement.library.source.uri
          .toString()
          .startsWith('package:flutter/')) {
        imports.add('package:flutter/widgets.dart');
      }

      // Create the class for the wrapper widget.
      l.body.add(cb.Class((c) {
        c.name =
            "${config.prefix}${wElement.name.pascalCase}${conElement.name.pascalCase}";

        // Pipeable widgets extend the PipeableWidget class
        c.extend = switch (pipeableParameter) {
          ParameterElement p =>
            _pipeableWidgetReference(p, package.library.typeSystem),
          null => cb.refer('StatelessWidget', 'package:flutter/widgets.dart'),
        };

        // Becuse the parent of PipeableWidget is Widget which has an
        // @immutable annotation, we have to ignore it
        if (pipeableParameter != null) {
          c.docs.add("\n// ignore: must_be_immutable");
        }

        // Copy the documentation from the widget to the class
        if (config.docs && wElement.documentationComment != null) {
          c.docs.add(wElement.documentationComment!);
        }

        // If the parent widget has type parameters, then we will add them to the class.
        for (final typeParameter in wElement.typeParameters) {
          c.types.add(cb.TypeReference((tr) {
            tr.symbol = typeParameter.name;
            if (typeParameter.bound != null) {
              tr.bound = typeReference(
                  typeParameter.bound!, package.library.typeSystem);
            }
          }));
        }
        final parameters = conElement.parameters.filterDeprecated();

        // Create the constructor for the widget.
        c.constructors.add(cb.Constructor((cc) {
          // Copy the documentation from the constructor to the class
          if (conElement.documentationComment != null && config.docs) {
            cc.docs.add(conElement.documentationComment!);
          }

          // The key parameter will refer to THIS widget's key parameter.
          // The wrapped wigets key will be provided by a field "superKey"
          cc.optionalParameters.add(cb.Parameter((p) {
            p.name = 'key';
            p.named = true;
            p.toSuper = true;
          }));

          // Pipeable widgets should not have a const constructor
          cc.constant = conElement.isConst && (pipeableParameter == null);

          // The parameters of the constructor are used to create this class.
          // deprecated parameters are ignored.
          for (var pElement in parameters) {
            // If this parameter is the pipeable parameter,
            // then child will be passed to the super constructor of the PipeableWidget.
            if (pipeableParameter == pElement) {
              cc.optionalParameters.add(cb.Parameter((p) {
                p.name = 'child';
                p.named = true;
                p.toSuper = true;

                if (!_isNullableParameter(pElement)) {
                  // If this parameter is required, then we will add a Stub widget
                  // as the default.
                  p.defaultTo = _temporaryWidgetInstance(c.name!);
                  // Add a RequiredOrPiped annotation to the child parameter.
                  // This will help a linter to warn if a child was not provided.
                  p.annotations.add(requiredOrPipedInstance());
                }
              }));
              continue;
            }

            final type =
                typeReference(pElement.type, package.library.typeSystem);

            final cb.Code? defaultCode;
            if (pElement.hasDefaultValue) {
              // The user won't be able to import private defaults
              // so we will ignore them.
              if (pElement.defaultValueCode!.startsWith("_")) {
                defaultCode = null;
              } else {
                // The default value is provided as a raw string.
                // This means we cant check for imports, however
                // many default values are static fields on the widget
                // or its supertypes, so we will check for that.
                final types = [
                  wElement,
                  ...wElement.allSupertypes.map((e) => e.element)
                ];
                final staticFields = types.nonNulls
                    .map((e) => [
                          ...e.fields.where((element) => element.isStatic),
                          ...e.methods.where((element) => element.isStatic)
                        ])
                    .expand((e) => e);
                final isDefaultInStaticField = staticFields.any(
                    (element) => element.name == pElement.defaultValueCode);
                if (isDefaultInStaticField) {
                  defaultCode =
                      cb.Code("${wElement.name}.${pElement.defaultValueCode}");
                } else {
                  defaultCode = cb.Code(pElement.defaultValueCode!);
                }
              }
            } else {
              defaultCode = null;
            }

            // If there is a default OR the type is nullable, then the parameter is not required.
            // Otherwise, the parameter is required.
            final isRequired = defaultCode != null
                ? false
                : switch (type) {
                    cb.TypeReference typeRef => typeRef.isNullable == false,
                    cb.FunctionType typeFunc => typeFunc.isNullable == false,
                    cb.RecordType typeRec => typeRec.isNullable == false,
                    _ => false,
                  };
            // The key field will be renamed to $childKey so that the wrapper
            // widget can have a key parameter.
            final parameterName =
                pElement.name == "key" ? "childKey" : pElement.name;

            final keywordRequired = pElement.isNamed && isRequired;
            final positionalRequired = pElement.isPositional && isRequired;
            final parameterDocs =
                _documentationForParameter(pElement, conElement);

            final parameter = cb.Parameter((p) {
              p.name = parameterName;
              p.named = pElement.isNamed;
              p.defaultTo = defaultCode;
              // This only controls the "required" keyword in the constructor.
              // The position of the parameter in the constructor is controlled by the
              // required and positional parameters.
              p.required = keywordRequired;
              p.toThis = true;
              if (config.docs && parameterDocs != null) {
                p.docs.add(parameterDocs);
              }
            });

            // This only control whether or not the arguemnt
            // is places in brackets/curlies in the constructor.
            if (positionalRequired) {
              cc.requiredParameters.add(parameter);
            } else {
              cc.optionalParameters.add(parameter);
            }

            // Create a field on the class for the parameter.
            c.fields.add(cb.Field((f) {
              f.name = parameter.name;
              f.type = type;
              f.modifier = cb.FieldModifier.final$;

              // Copy the documentation from the field to the class
              // The redirected parameter has more accurate information
              final docs = _documentationForField(pElement, conElement);
              if (docs != null && config.docs) {
                f.docs.add(docs);
              }
            }));
          }
        }));

        // Finally, create the build method for the widget.
        c.methods.add(cb.Method((m) {
          m.name = 'build';
          m.returns = cb.refer('Widget', 'package:flutter/widgets.dart');
          m.annotations.add(cb.refer('override'));
          m.requiredParameters.add(cb.Parameter((p) {
            p.name = 'context';
            p.type = cb.refer('BuildContext', 'package:flutter/widgets.dart');
          }));

          /// Get the parameters as references
          /// Rename the key parameter to childKey so that the childKey
          /// parameter can be passed to the super constructor.
          final positionalArgs = parameters
              .where((element) => element.isPositional)
              .map((e) => cb.refer(e.name == "key" ? "childKey" : e.name));
          final namedArgs = Map.fromEntries(parameters
              .where((element) => element.isNamed)
              .map((e) => MapEntry(
                  e.name, cb.refer(e.name == "key" ? "childKey" : e.name))));

          // Create a reference to the child widget.
          final conReference =
              cb.refer(wElement.name, wElement.library.source.uri.toString());

          // Create the expression for the child widget.
          final cb.Expression conExression;
          if (conElement.name.isNotEmpty) {
            conExression = conReference.newInstanceNamed(
                conElement.name, positionalArgs, namedArgs);
          } else {
            conExression = conReference.newInstance(positionalArgs, namedArgs);
          }

          // Return the child widget.
          m.body = cb.Block.of([
            cb.Code('return'),
            conExression.code,
            cb.Code(';'),
          ]);
        }));

        l.directives.addAll(imports.map((e) => cb.Directive.import(e)));
      }));
    });
  }

  String pathForWidget(ClassElement wElement, ConstructorElement conElement) {
    final fileName = conElement.name.isEmpty
        ? wElement.name.camelCase
        : "${wElement.name.camelCase}_${conElement.name.camelCase}";
    return p.normalize(p.join(getOutputDir(Config()).path, fileName));
  }

  @override
  Future<int> run() async {
    final configReadStopper =
        await _logger.isolateProgress("Reading configuration");
    final config = await validateProject();
    if (config == null) return ExitCode.usage.code;
    await configReadStopper.stop();
    if (argResults!['validate_config'] as bool) return ExitCode.success.code;

    final packages = await parseLibraryElements(config);
    if (packages == null) return ExitCode.usage.code;
    if (argResults!['validate_libraries'] as bool) return ExitCode.success.code;

    final results = <String, cb.Library>{}; // The key is the path to the file.
    for (final package in packages) {
      final packageName = package.library.source.uri.pathSegments.first;
      for (final wElement in package.classes) {
        // A copy of the widget element is created for each constructor.
        // Private constructors are ignored.
        for (final conElement
            in wElement.constructors.where((element) => element.isPublic)) {
          // Create a file name based on the widget and constructor names.
          final fileName = conElement.name.isEmpty
              ? wElement.name.snakeCase
              : "${wElement.name.snakeCase}_${conElement.name.snakeCase}";
          String path = p.normalize(
            p.join(getOutputDir(config).path, packageName, fileName),
          );

          // If the file already exists, then we will add a number to the file name.
          if (results.keys.contains(path)) {
            int i = 1;
            while (results.keys.contains(path + "_$i")) {
              i++;
            }
          }

          // Finally, add the dart extension to the file name.
          path = path + ".dart";

          // Generate the wrapper widget for the widget element.
          results[path] = await generateWrapperWidget(
              package, wElement, conElement, config);
        }
      }
    }
    getOutputDir(config).createSync(recursive: true);

    for (final e in results.entries) {
      final file = File(e.key);
      if (file.existsSync() && !(argResults!['force'] as bool)) {
        _logger.warn(overwriteFileError(file: file.path));
        continue;
      }
      file.createSync(recursive: true);

      final emitter = cb.DartEmitter(useNullSafetySyntax: true);

      final rawCode = e.value.accept(emitter).toString();
      final formattedCode = DartFormatter().format(rawCode);
      file.writeAsStringSync(formattedCode);
    }
    return ExitCode.success.code;
  }
}

class Package {
  Package({
    required this.library,
    required this.packageName,
    required this.classes,
  });
  final String packageName;
  final LibraryElement library;
  final Set<ClassElement> classes;
}

extension on Iterable<ParameterElement> {
  List<ParameterElement> filterDeprecated() {
    return where((element) => !element.metadata.any((m) {
          final type = m.computeConstantValue()?.type;
          return type?.toString().toLowerCase() == "deprecated";
        })).toList();
  }
}

/// Trade-in a super.title for this.title to extract information about the
/// underlying field
FieldFormalParameterElement? _fieldFromParameter(ParameterElement p) {
  if (p is FieldFormalParameterElement) {
    return p;
  }
  if (p case SuperFormalParameterElement p) {
    if (p.superConstructorParameter != null) {
      return _fieldFromParameter(p.superConstructorParameter!);
    }
  }
  return null;
}

bool _isPipeable(ParameterElement p) {
  return p.name == 'child' &&
      p.isNamed &&
      widgetChecker.isAssignableFromType(p.type);
}

bool _isNullableParameter(ParameterElement p) {
  // ignore: deprecated_member_use
  return p.type.getDisplayString(withNullability: true).endsWith("?");
}

/// Create a reference to the PipeableWidget class with
/// Widget? | Widget as a type argument.
cb.Reference _pipeableWidgetReference(
    ParameterElement p, TypeSystem typeSystem) {
  final pipeableReference =
      cb.refer('PipeableWidget', 'package:rabbit/pipeable.dart');
  final pipeableTypeReference =
      (pipeableReference.type as cb.TypeReference).toBuilder();
  pipeableTypeReference.types.add(typeReference(p.type, typeSystem));
  return pipeableTypeReference.build();
}

cb.Code _temporaryWidgetInstance(String widgetName) {
  return cb
      .refer('TemporaryWidget', 'package:rabbit/pipeable.dart')
      .constInstance([],
          {'name': cb.literalString(widgetName.replaceAll(r"$", r"\$"))}).code;
}

cb.Expression requiredOrPipedInstance() {
  return cb
      .refer('RequiredOrPiped', 'package:rabbit/pipeable.dart')
      .newInstance([]);
}

/// If this constructor is a redirecting constructor, then we will
/// find the parameter in the redirected constructor.
///
/// The redirected parameter has better documentation.
ParameterElement _redirectedParameter(
    ParameterElement p, ConstructorElement con) {
  ParameterElement? redirectedParameter;
  if (con.redirectedConstructor != null) {
    final redirectedParameters = con.redirectedConstructor!.parameters;
    redirectedParameter = redirectedParameters
        .firstWhereOrNull((element) => element.name == p.name);
  } else {
    redirectedParameter = null;
  }
  return redirectedParameter ?? p;
}

/// Get the documentation for the parameter.
String? _documentationForParameter(ParameterElement p, ConstructorElement con) {
  return _redirectedParameter(p, con).documentationComment;
}

/// Get the documentation for the field using the parameter.
String? _documentationForField(ParameterElement p, ConstructorElement con) {
  return _fieldFromParameter(_redirectedParameter(p, con))
      ?.field
      ?.documentationComment;
}
