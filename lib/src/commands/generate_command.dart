import 'dart:async';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/dart/element/type_system.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:args/command_runner.dart';
import 'package:checked_yaml/checked_yaml.dart';
import 'package:code_builder/code_builder.dart' as cb;
import 'package:mason_logger/mason_logger.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:widget_wrapper/src/commands/messages.dart';
import 'package:widget_wrapper/src/config.dart';
import 'package:widget_wrapper/src/utils/progress_isolate.dart';
import 'package:path/path.dart' as p;
import 'package:yaml/yaml.dart';
import 'package:recase/recase.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

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
    /// Due to a bug in the Flutter SDK, the `flutter` executable is not able to
    /// run this command. This will warn the user if they are using the `flutter`
    if (p.basenameWithoutExtension(Platform.executable).endsWith('flutter')) {
      _logError(useDartExeError);
      return ExitCode.usage.code;
    }

    /// Setup the user project and parse the pubspec.yaml file.
    /// Validate that the project is a valid Flutter project and that
    /// it has a valid widget_wrapper configuration.
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
      _logError(parsePubspecError, e, s);
      return ExitCode.usage.code;
    }

    /// If the `validate_config` flag is set, then we will return early.
    if (argResults!['validate_config'] as bool) {
      return ExitCode.success.code;
    }

    /// Create the analysis context and locate the libraries for the widgets.
    final context = await createContext(p.normalize(currentDir.path));
    final packages = <Package>[];
    for (final MapEntry(key: package, value: widgetNames)
        in config.widgets.entries) {
      try {
        /// Locate the library for the package.
        final stopper = await _logger.isolateProgress(
          'Parsing package: ${package}',
        );
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

    /// Locate the classes for the widgets.
    for (final package in packages) {
      /// Visit the library to find all widgets.
      final visitor =
          WidgetVisitor(context: context, rootLibrary: package.library);
      package.library.accept(visitor);

      if (package.all) {
        package.classes.addAll(visitor.seenWidgets);
      } else {}

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
          /// If there is only one widget, then we will use that one.

          widgetElement = matchedClasses.first;
        }
        package.classes.add(widgetElement);
      }
    }

    /// If the `validate_widgets` flag is set, then we will return early.
    if (argResults!['validate_widgets'] as bool) {
      return ExitCode.success.code;
    }

    /// Parse the constructors for the widget.
    final library = cb.Library((b) {
      final Package(classes: classes, library: library) = packages.first;
      b.name = library.name;

      for (final wElement in classes) {
        b.body.add(cb.Class(
          (c) {
            c.name = config.prefix + wElement.name.pascalCase;
            c.extend =
                cb.refer('StatelessWidget', 'package:flutter/widgets.dart');

            c.methods.add(cb.Method((m) {
              m.name = 'build';
              m.returns = cb.refer('Widget', 'package:flutter/widgets.dart');
              m.requiredParameters.add(cb.Parameter((p) {
                p.name = 'context';
                p.type =
                    cb.refer('BuildContext', 'package:flutter/widgets.dart');
              }));
              m.body = cb.Block.of([
                cb.Code('return'),
                cb.Code.scope((a) {
                  return a(
                      cb.refer(wElement.name, library.source.uri.toString()));
                }),
                cb.Code('();'),
              ]);
            }));

            c.constructors.add(cb.Constructor((cc) {
              for (final pElement in wElement.unnamedConstructor!.parameters) {
                final parameter = cb.Parameter((p) {
                  p.name = pElement.name;
                  p.named = pElement.isNamed;
                  p.toThis = true;
                });
                if (pElement.isRequired) {
                  cc.requiredParameters.add(parameter);
                } else {
                  cc.optionalParameters.add(parameter);
                }
                c.fields.add(cb.Field((f) {
                  f.name = parameter.name;
                  f.type = _typeReference(pElement.type, library.typeSystem);
                  f.modifier = cb.FieldModifier.final$;
                }));
              }
            }));
          },
        ));
      }
    });
    final emitter = cb.DartEmitter.scoped();
    final output = library.accept(emitter).toString();
    // TODO: replace
    File(p.join(currentDir.path, 'lib', 'output.dart'))
        .writeAsStringSync(output);
    _logger.success(output);
    return ExitCode.success.code;
  }
}

/// A class which will find all the widgets in a package.
class WidgetVisitor extends RecursiveElementVisitor {
  /// The root library that the visitor started from.
  final LibraryElement rootLibrary;

  /// The analysis context for the project.
  final AnalysisContext context;

  WidgetVisitor({required this.context, required this.rootLibrary});

  /// This will contain all the widgets that have been found once the visitor has finished.
  final Set<ClassElement> seenWidgets = <ClassElement>{};

  /// This will check if the element is a widget.
  final _widgetChecker = TypeChecker.fromName('Widget', packageName: 'flutter');

  /// The libraries that have been visited. This is to prevent visiting the same library multiple times.
  final visitedLibraries = <LibraryElement>{};

  @override
  dynamic visitClassElement(ClassElement element) {
    final isWidget = _widgetChecker.isAssignableFrom(element);
    if (isWidget &&
        element.isPublic &&
        !element.isAbstract &&
        element.isConstructable &&
        !seenWidgets.contains(element) &&
        element.unnamedConstructor != null) {
      seenWidgets.add(element);
    }

    return super.visitClassElement(element);
  }

  @override
  dynamic visitLibraryImportElement(LibraryImportElement element) {
    visitLibrary(element.importedLibrary);

    return super.visitLibraryImportElement(element);
  }

  @override
  dynamic visitLibraryExportElement(LibraryExportElement element) {
    visitLibrary(element.exportedLibrary);

    return super.visitLibraryExportElement(element);
  }

  visitLibrary(LibraryElement? element) {
    if (element != null && !visitedLibraries.contains(element)) {
      // Only visit the libraries that are in the same package as the root library.
      if (element.source.uri.scheme == 'package' &&
          rootLibrary.source.uri.scheme == 'package' &&
          element.source.uri.pathSegments.first ==
              rootLibrary.source.uri.pathSegments.first) {
        visitedLibraries.add(element);
        element.visitChildren(this);
      }
    }
  }
}

/////////////////////////////////////////////////////
/// The below has been copied form te Mockito package.
/////////////////////////////////////////////////////
cb.Reference _typeReference(DartType type, TypeSystem typeSystem,
    {bool forceNullable = false, bool overrideVoid = false}) {
  if (overrideVoid && type is VoidType) {
    return cb.TypeReference((b) => b..symbol = 'dynamic');
  }
  if (type is InvalidType) {
    return cb.TypeReference((b) => b..symbol = 'dynamic');
  }
  if (type is InterfaceType) {
    return cb.TypeReference((b) {
      b
        ..symbol = type.element.name
        ..isNullable = !type.isDartCoreNull &&
            (forceNullable ||
                type.nullabilitySuffix == NullabilitySuffix.question)
        ..url = _typeImport(type.element)
        ..types.addAll(
            type.typeArguments.map((e) => _typeReference(e, typeSystem)));
    });
  } else if (type is FunctionType) {
    final alias = type.alias;
    if (alias == null || alias.element.isPrivate) {
      // [type] does not refer to a type alias, or it refers to a private type
      // alias; we must instead write out its signature.
      return cb.FunctionType((b) =>
          // _withTypeParameters(type.typeFormals,
          () {
            b
              ..isNullable =
                  forceNullable || typeSystem.isPotentiallyNullable(type)
              ..returnType = _typeReference(type.returnType, typeSystem)
              ..requiredParameters.addAll(type.normalParameterTypes
                  .map((e) => _typeReference(e, typeSystem)))
              ..optionalParameters.addAll(type.optionalParameterTypes
                  .map((e) => _typeReference(e, typeSystem)));
            for (final parameter
                in type.parameters.where((p) => p.isOptionalNamed)) {
              b.namedParameters[parameter.name] =
                  _typeReference(parameter.type, typeSystem);
            }
            for (final parameter
                in type.parameters.where((p) => p.isRequiredNamed)) {
              b.namedRequiredParameters[parameter.name] =
                  _typeReference(parameter.type, typeSystem);
            }
          }());
      // );
    }
    return cb.TypeReference((b) {
      b
        ..symbol = alias.element.name
        ..url = _typeImport(alias.element)
        ..isNullable = forceNullable || typeSystem.isNullable(type);
      for (final typeArgument in alias.typeArguments) {
        b.types.add(_typeReference(typeArgument, typeSystem));
      }
    });
  } else if (type is TypeParameterType) {
    return cb.TypeReference((b) {
      b
        ..symbol = type.element.name
        ..isNullable = forceNullable || typeSystem.isNullable(type);
    });
  } else if (type is RecordType) {
    return cb.RecordType((b) => b
      ..positionalFieldTypes.addAll([
        for (final f in type.positionalFields)
          _typeReference(f.type, typeSystem)
      ])
      ..namedFieldTypes.addAll({
        for (final f in type.namedFields)
          f.name: _typeReference(f.type, typeSystem)
      })
      ..isNullable = forceNullable || typeSystem.isNullable(type));
  } else {
    return cb.refer(type.getDisplayString(), _typeImport(type.element));
  }
}

String? _typeImport(
  Element? element,
) {
  // For type variables, no import needed.
  if (element is TypeParameterElement) return null;

  // For types like `dynamic`, return null; no import needed.
  if (element?.library == null) return null;
  return element!.library!.source.uri.toString();
}

/////////////////////////////////////////////////////
/// The above has been copied form te Mockito package.
/////////////////////////////////////////////////////

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
