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
import 'package:code_builder/code_builder.dart' as cb;
import 'package:mason_logger/mason_logger.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:widget_wrapper/src/commands/messages.dart';
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

  @override
  Future<int> run() async {
    /// Due to a bug in the Flutter SDK, the `flutter` executable is not able to
    /// run this command. This will warn the user if they are using the `flutter`
    if (p.basenameWithoutExtension(Platform.executable).endsWith('flutter')) {
      _logger.err(useDartExeError);
      return ExitCode.usage.code;
    }

    /// Setup the user project and parse the pubspec.yaml file.
    /// Validate that the project is a valid Flutter project and that
    /// it has a valid widget_wrapper configuration.
    final currentDir = Directory.current;
    final pubspecFile = File(p.join(currentDir.path, 'pubspec.yaml'));
    if (!pubspecFile.existsSync()) {
      _logger.err(pubspecMissingError);
      return ExitCode.usage.code;
    }
    final pubspecText = pubspecFile.readAsStringSync();
    final pubspecYaml = loadYaml(pubspecText) as YamlMap;
    final pubspec = Pubspec.parse(pubspecText);

    if (!pubspec.dependencies.containsKey('flutter')) {
      _logger.err(flutterMissingError);
      return ExitCode.usage.code;
    }

    /// The configuration for the widget_wrapper is stored in the `widget_wrapper`
    final YamlMap widgetWrapperConfig;

    /// The configuration for the widgets is stored in the `widgets` of the `widget_wrapper`
    final Map rawWidgetMap;

    /// Parse the widget_wrapper configuration and validate that it is correct.
    try {
      widgetWrapperConfig = (pubspecYaml['widget_wrapper'] as YamlMap);

      /// The widgets could be in map form:
      /// ```
      /// widget_wrapper:
      ///   widgets:
      ///     package_name:
      ///       - widget_name
      /// ```
      /// or in list form:
      /// ```
      /// widget_wrapper:
      ///   widgets:
      ///   - package_name:
      ///     - widget_name
      /// ```
      /// This will convert the list form to the map form.
      switch (widgetWrapperConfig['widgets']) {
        case YamlMap map:
          rawWidgetMap = map;
          break;
        case YamlList list:
          if (list.every((element) => element is YamlMap)) {
            rawWidgetMap = Map();
            for (final element in list) {
              rawWidgetMap.addAll(element as YamlMap);
            }
          } else {
            _logger.err(invalidConfig);
            return ExitCode.usage.code;
          }
          break;
        default:
          _logger.err(invalidConfig);
          return ExitCode.usage.code;
      }
    } catch (e, s) {
      _logger.err(e.toString());
      if (_logger.level == Level.verbose) _logger.err(s.toString());
      _logger.err(s.toString());
      _logger.err(invalidConfig);
      return ExitCode.usage.code;
    }

    /// Parse the widget configuration and validate that it is correct.
    final widgetMap = <String, List<String>>{};
    for (final entry in rawWidgetMap.entries) {
      if (entry.key is! String) {
        _logger
            .err("Invalid key in widget map: ${entry.key}. Must be a string.");
        _logger.err(invalidConfig);
        return ExitCode.usage.code;
      }
      final value = <String>[];
      switch (entry.value) {
        case String s when s == 'all':
          value.add("__all__");
          break;
        case List l when l.every((element) => element is String):
          value.addAll(l.cast<String>());
          break;
        default:
          _logger.err(
              "Invalid value in widget map: ${entry.value}. Must be a list of widgets or 'all'.");
          _logger.err(invalidConfig);
          return ExitCode.usage.code;
      }
      widgetMap[entry.key as String] = value;
    }

    /// TODO: Make this configurable and add tests.
    final String prefix = "\$";

    /// If the `validate_config` flag is set, then we will return early.
    if (argResults!['validate_config'] as bool) {
      return ExitCode.success.code;
    }

    /// Create the analysis context and locate the libraries for the widgets.
    final context = await createContext(p.normalize(currentDir.path));
    final libraryMap = <LibraryElement, List<String>>{};
    for (final MapEntry(key: package, value: widgets) in widgetMap.entries) {
      try {
        final stopper =
            await _logger.isolateProgress('Parsing package: ${package}');

        final library = (await context.currentSession.getLibraryByUri(package)
                as LibraryElementResult)
            .element;
        libraryMap[library] = widgets;
        await stopper.stop();
      } catch (e, s) {
        _logger.err(e.toString());
        if (_logger.level == Level.verbose) _logger.err(s.toString());
        _logger.err(invalidLibraryError(package));
        return ExitCode.usage.code;
      }
    }

    /// If the `validate_libraries` flag is set, then we will return early.
    if (argResults!['validate_libraries'] as bool) {
      return ExitCode.success.code;
    }

    /// locate the classes for the widgets.
    final widgetLibraryMap = <LibraryElement, List<ClassElement>>{};
    for (final MapEntry(key: library, value: widgetNames)
        in libraryMap.entries) {
      /// Visit the library to find all widgets.
      final visitor = WidgetVisitor(context: context, rootLibrary: library);
      library.accept(visitor);

      /// Find the widget elements that match the widget names.
      for (var widgetName in widgetNames) {
        if (widgetName == "__all__") {
          widgetLibraryMap
              .putIfAbsent(library, () => [])
              .addAll(visitor.seenWidgets);
          continue;
        }
        final widgetElements =
            visitor.seenWidgets.where((element) => element.name == widgetName);

        /// If the widget is not found, then we will return early.
        if (widgetElements.isEmpty) {
          _logger.err(
            widgetNotFound(library.source.uri.toString(), widgetName),
          );
          return ExitCode.usage.code;
        }

        /// If there are multiple widgets with the same name, then we will choose one.
        /// If there is only one widget, then we will use that one.
        final ClassElement widgetElement;
        if (widgetElements.length > 1) {
          widgetElement = _logger.chooseOne(
              "Found mutiple matches for $widgetName in ${library.source.uri.toString()}:",
              display: (e) => "${e.name} : ${e.library.source.uri}",
              choices: widgetElements.toList());
        } else {
          widgetElement = widgetElements.first;
        }

        /// Add the widget to the widget library map.
        widgetLibraryMap.putIfAbsent(library, () => []).add(widgetElement);
      }
    }

    /// If the `validate_widgets` flag is set, then we will return early.
    if (argResults!['validate_widgets'] as bool) {
      return ExitCode.success.code;
    }

    /// Parse the constructors for the widget.
    final library = cb.Library((b) {
      final MapEntry(key: library, value: classes) =
          widgetLibraryMap.entries.first;
      b.name = library.name;

      for (final wElement in classes) {
        b.body.add(cb.Class(
          (c) {
            c.name = prefix + wElement.name.pascalCase;
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

// cb.TypeReference _referenceFromDartType(DartType type) {
//   return cb.TypeReference((p0) {
//     p0.symbol = type.element?.name;
//     p0.url = type.element?.library?.source.uri.toString();
//     if (type is ParameterizedType) {
//       p0.types.addAll(type.typeArguments.map(_referenceFromDartType));
//     }
//   });
// }

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

// T _withTypeParameters<T>(Iterable<TypeParameterElement> typeParameters,
//       T Function(Iterable<cb.TypeReference>, Iterable<cb.TypeReference>) body,
//       {Iterable<TypeParameterElement>? typeFormalsHack}) {
//     // final typeVars = [for (final t in typeParameters) _newTypeVar(t)];
//     // final scope = Map.fromIterables(typeParameters, typeVars);
//     // _typeVariableScopes.add(scope);
//     if (typeFormalsHack != null) {
//       // add an additional scope based on [type.typeFormals] just to make
//       // type parameters references.
//       // _typeVariableScopes.add(Map.fromIterables(typeFormalsHack, typeVars));
//       // use typeFormals instead of typeParameters to create refs.
//       typeParameters = typeFormalsHack;
//     }
//     // final typeRefsWithBounds = typeParameters.map(_typeParameterReference);
//     // final typeRefs =
//     //     typeParameters.map((t) => _typeParameterReference(t, withBound: false));

//     final result = body(typeRefsWithBounds, typeRefs);
//     _typeVariableScopes.removeLast();
//     if (typeFormalsHack != null) {
//       // remove the additional scope too.
//       _typeVariableScopes.removeLast();
//     }
//     _usedTypeVariables.removeAll(typeVars);
//     return result;
//   }
