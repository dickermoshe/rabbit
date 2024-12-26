// dart format width=120
import 'dart:async';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
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
import 'package:rabbit/src/utils/widet_visitor.dart';
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
    argParser.addFlag(
      'validate_widgets',
      help: 'Validate that the configuration contains valid widgets. '
          'This will not generate any files.',
      defaultsTo: false,
      hide: true,
    );
  }
  final Logger _logger;

  @override
  String get description =>
      'Create the widget wrappers for the widgets provided in the publpec file.';

  @override
  String get name => 'generate';

  AnalysisContext createContext(String dir) {
    return AnalysisContextCollection(includedPaths: [dir]).contextFor(dir);
  }

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

  @override
  Future<int> run() async {
    final stopper = await _logger.isolateProgress("Reading configuration");

    /// Due to a bug in the Flutter SDK, the `flutter` executable is not able to
    /// run this command. This will warn the user if they are using the `flutter`
    if (p.basenameWithoutExtension(Platform.executable).endsWith('flutter')) {
      _logError(useDartExeError);
      return ExitCode.usage.code;
    }

    /// Setup the user project and parse the pubspec.yaml file.
    /// Validate that the project is a valid Flutter project and that
    /// it has a valid rabbit configuration.
    final currentDir = Directory.current;
    final pubspecFile = File(p.join(currentDir.path, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      _logError(pubspecMissingError);
      return ExitCode.usage.code;
    }

    final pubspecText = pubspecFile.readAsStringSync();
    final pubspec = Pubspec.parse(pubspecText);

    if (!pubspec.dependencies.containsKey('flutter')) {
      _logger.err(flutterMissingError);
      return ExitCode.usage.code;
    }
    final Config config;
    try {
      config = checkedYamlDecode(
          pubspecText, (p0) => RootConfig.fromJson(p0!).widgetWrapper);
    } catch (e, s) {
      _logError(invalidConfig, e, s);
      return ExitCode.usage.code;
    }
    final outputDir =
        Directory(p.join(Directory.current.path, config.outputDir));
    outputDir.createSync(recursive: true);
    await stopper.stop();

    /// If the `validate_config` flag is set, then we will return early.
    if (argResults!['validate_config'] as bool) {
      return ExitCode.success.code;
    }

    /// Create the analysis context and locate the libraries for the widgets.
    final context = createContext(p.normalize(currentDir.path));
    final packages = <Package>[];
    _logger.info('Parsing packages:');
    for (final MapEntry(key: package, value: widgetNames)
        in config.widgets.entries) {
      try {
        /// Locate the library for the package.
        final stopper = await _logger.isolateProgress(package);
        final result = (await context.currentSession.getLibraryByUri(package)
            as LibraryElementResult);
        final library = result.element;
        packages.add(Package(library: library, widgetNames: widgetNames));
        await stopper.stop();
      } catch (e, s) {
        _logError(invalidLibraryError(package), e, s);
        return ExitCode.usage.code;
      }
    }

    /// If the `validate_libraries` flag is set, then we will return early.
    if (argResults!['validate_libraries'] as bool) {
      return ExitCode.success.code;
    }
    final widgetLocatorStopper =
        await _logger.isolateProgress("Locating widgets");

    /// Locate the classes for the widgets.
    for (final package in packages) {
      /// Visit the library to find all widgets.
      final visitor =
          WidgetVisitor(context: context, rootLibrary: package.library);
      package.library.accept(visitor);

      if (package.all) {
        package.classes.addAll(visitor.seenWidgets);
      } else {
        /// Find the widget elements that match the widget names.
        for (var widgetName in package.widgetNames) {
          /// Find the widget element that matches the widget name.
          final ClassElement widgetElement;
          final matchedClasses = visitor.seenWidgets
              .where((element) => element.name == widgetName)
              .toSet();

          /// If the widget is not found, then we will return early.
          if (matchedClasses.isEmpty) {
            _logger.err(widgetNotFound(
                package.library.source.uri.toString(), widgetName));
            return ExitCode.usage.code;
          }

          /// If there are multiple widgets with the same name, then we will choose one.
          if (matchedClasses.length > 1) {
            widgetElement = _logger.chooseOne(
                "Found mutiple matches for $widgetName in ${package.library.source.uri.toString()}:",
                display: (e) => "${e.name} : ${e.library.source.uri}",
                choices: matchedClasses.toList());
          } else {
            // If there is only one widget, then we will use that one.
            widgetElement = matchedClasses.first;
          }
          package.classes.add(widgetElement);
        }
      }
    }
    widgetLocatorStopper.stop();

    /// If the `validate_widgets` flag is set, then we will return early.
    if (argResults!['validate_widgets'] as bool) {
      return ExitCode.success.code;
    }

    final genCodeStopper = await _logger.isolateProgress("Generating code");

    final results = <String, cb.Library>{};
    for (final package in packages) {
      for (final wElement in package.classes) {
        final path = p.normalize(p.joinAll(
            [outputDir.path, ...wElement.library.source.uri.pathSegments]));
        final library = (results[path] ?? cb.Library()).toBuilder();
        for (final conElement in wElement.constructors) {
          // The body will be empty if this is the first time we are adding to the library.
          // This ensures that the import directive is added to the top of the file.
          // Alos, only add import if we arent using code_builders import prefixes
          if (library.body.isEmpty && !config.addImports) {
            final libraryUris = {
              package.library.source.uri.toString(),
              wElement.library.source.uri.toString()
            };
            for (var uri in libraryUris) {
              library.body.add(cb.Directive.import(uri));
            }
          }

          library.body.add(cb.Class(
            (c) {
              // The class name uses the prefix from the config
              // and adds the constructor if there is one
              // e.g SizedBox.square => $SizedBoxSquare
              c.name = config.prefix +
                  wElement.name.pascalCase +
                  conElement.name.pascalCase;
              c.extend =
                  cb.refer('StatelessWidget', 'package:flutter/widgets.dart');

              // Copy the documentation from the widget to the class
              if (wElement.documentationComment != null && config.docs) {
                c.docs.add(wElement.documentationComment!);
              }

              /// Add the type parameters to the class.
              wElement.typeParameters.forEach((element) {
                c.types.add(cb.TypeReference((tr) {
                  tr.symbol = element.name;
                  if (element.bound != null) {
                    tr.bound = typeReference(
                        element.bound!, package.library.typeSystem);
                  }
                }));
              });

              // Ignore parameters that are deprecated.
              final parameters = conElement.parameters.filterDeprecated();

              // Create the constructor for the widget.
              c.constructors.add(cb.Constructor((cc) {
                // Copy the documentation from the constructor to the class
                if (conElement.documentationComment != null && config.docs) {
                  cc.docs.add(conElement.documentationComment!);
                }
                // Add the Stateless Widget key parameter
                cc.optionalParameters.add(cb.Parameter((p) {
                  p.name = 'key';
                  p.named = true;
                  p.toSuper = true;
                }));

                // Add the parameters to the constructor.
                for (var pElement in parameters) {
                  // Ignore the child key parameter
                  if (pElement.name == 'key') {
                    continue;
                  }

                  /// If the constructor is a redirecting constructor, then we will
                  /// get that parameter for the redirected constructor parameter.
                  /// That paramter will have more accurate information about the field.
                  ParameterElement? redirectedParameter;
                  if (conElement.redirectedConstructor != null) {
                    final redirectedParameters =
                        conElement.redirectedConstructor!.parameters;
                    redirectedParameter = redirectedParameters.firstWhereOrNull(
                      (element) => element.name == pElement.name,
                    );
                  } else {
                    redirectedParameter = null;
                  }

                  final type =
                      typeReference(pElement.type, package.library.typeSystem);
                  final isRequired = switch (type) {
                    cb.TypeReference typeRef => typeRef.isNullable == false,
                    cb.FunctionType typeFunc => typeFunc.isNullable == false,
                    cb.RecordType typeRec => typeRec.isNullable == false,
                    _ => false,
                  };

                  final keywordRequired = pElement.isNamed && isRequired;
                  final positionalRequired =
                      pElement.isPositional && isRequired;

                  final parameter = cb.Parameter((p) {
                    p.name = pElement.name;
                    p.named = pElement.isNamed;
                    // This only controls the "required" keyword in the constructor.
                    p.required = keywordRequired;
                    p.toThis = true;
                    // Copy the documentation from the parameter to the class
                    // The redirected parameter has more accurate information
                    if ((redirectedParameter ?? pElement)
                                .documentationComment !=
                            null &&
                        config.docs) {
                      p.docs.add(pElement.documentationComment!);
                    }
                  });

                  // This only control whether or not the arguemnt
                  // is places in brackets/curlies in the constructor.
                  if (positionalRequired) {
                    cc.requiredParameters.add(parameter);
                  } else {
                    cc.optionalParameters.add(parameter);
                  }
                  // All stateless widget parameters are final
                  cc.constant = true;

                  c.fields.add(cb.Field((f) {
                    f.name = parameter.name;
                    f.type = type;
                    f.modifier = cb.FieldModifier.final$;

                    // Copy the documentation from the field to the class
                    // The redirected parameter has more accurate information
                    final docs =
                        _fieldFromParameter(redirectedParameter ?? pElement)
                            ?.field
                            ?.documentationComment;

                    if (docs != null && config.docs) {
                      f.docs.add(docs);
                    }
                  }));
                }
              }));

              /// Create the build method for the widget.
              c.methods.add(cb.Method((m) {
                m.name = 'build';
                m.returns = cb.refer('Widget', 'package:flutter/widgets.dart');
                m.annotations.add(cb.refer('override'));
                m.requiredParameters.add(cb.Parameter((p) {
                  p.name = 'context';
                  p.type =
                      cb.refer('BuildContext', 'package:flutter/widgets.dart');
                }));

                final positionalArgs = parameters
                    .where((element) => element.isPositional)
                    .map((e) => cb.refer(e.name));
                final namedArgs = Map.fromEntries(parameters
                    .where((element) => element.isNamed)
                    .map((e) => MapEntry(e.name, cb.refer(e.name))));

                final conReference = cb.refer(
                    wElement.name, wElement.library.source.uri.toString());
                final cb.Expression conExression;
                if (conElement.name.isNotEmpty) {
                  conExression = conReference.newInstanceNamed(
                      conElement.name, positionalArgs, namedArgs);
                } else {
                  conExression =
                      conReference.newInstance(positionalArgs, namedArgs);
                }

                m.body = cb.Block.of([
                  cb.Code('return'),
                  conExression.code,
                  cb.Code(';'),
                ]);
              }));
            },
          ));
        }

        results[path] = library.build();
      }
    }
    genCodeStopper.stop();
    final writeCodeStopper = await _logger.isolateProgress("Writing to disk");

    for (final e in results.entries) {
      final file = File(e.key);
      if (file.existsSync() && !(argResults!['force'] as bool)) {
        _logger.warn(overwriteFileError(file: file.path));
        continue;
      }
      file.createSync(recursive: true);

      final cb.DartEmitter emitter;
      if (config.addImports) {
        emitter = cb.DartEmitter.scoped(useNullSafetySyntax: true);
      } else {
        emitter = cb.DartEmitter(useNullSafetySyntax: true);
      }

      final rawCode = e.value.accept(emitter).toString();
      final formattedCode = DartFormatter().format(rawCode);
      file.writeAsStringSync(formattedCode);
    }
    writeCodeStopper.stop();
    return ExitCode.success.code;
  }
}

class Package {
  Package({
    required this.library,
    required Set<String> widgetNames,
  }) {
    all = widgetNames.contains('all');
    this.widgetNames = widgetNames.where((element) => element != 'all').toSet();
  }

  late bool all;
  final LibraryElement library;
  late final Set<String> widgetNames;
  final Set<ClassElement> classes = {};
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
