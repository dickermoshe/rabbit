// ignore_for_file: depend_on_referenced_packages

import 'dart:io';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:path/path.dart' as p;
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

/// The libraries that contain widgets
final widgetLibraries = [
  'package:flutter/material.dart',
  'package:flutter/widgets.dart',
  'package:flutter/cupertino.dart',
];

/// A type checker for the widget type
const widgetChecker = TypeChecker.fromName('Widget', packageName: 'flutter');

final ignoredWidgets = ['RenderObjectToWidgetAdapter', 'Transform'];
final ignoredConstructors = [
  ('Ink', 'image'),
  ('Badge', 'count'),
  ('SelectionRegistrarScope', '_disabled'),
  ('KeyedSubtree', 'wrap'),
  ('Semantics', 'fromProperties'),
  ('SizedBox', 'fromSize'),
  ('SizedBox', 'square'),
  ('RepaintBoundary', 'wrap'),
];

/// The final template for the generated file
String template = """
// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/cupertino.dart';
import 'package:widget_pipes/pipeable.dart';

""";

void main() async {
  final t1 = DateTime.now();

  final projectRoot = Directory.current.path;
  final libraryRoot = p.join(projectRoot, 'lib');
  final importsRoot = p.join(libraryRoot, 'widget_pipes.dart');

  /// Create an analysis context for the project
  final contextCollection =
      AnalysisContextCollection(includedPaths: [libraryRoot]);
  final context = contextCollection.contextFor(importsRoot);

  /// Visit all the widget libraries to find all the widgets
  /// The visitor will write the widgets to the template
  for (final uri in widgetLibraries) {
    final libraryElement = (await context.currentSession.getLibraryByUri(uri)
            as LibraryElementResult)
        .element;
    libraryElement.accept(WidgetVisitor(context: context));
  }

  // ignore: avoid_print
  print('Time: ${DateTime.now().difference(t1).inMilliseconds}ms');
  // Save the generated file
  File(p.join(libraryRoot, 'widget_pipes1.dart')).writeAsStringSync(template);
}

/// The widgets that have a child field
final seenWidgets = <ClassElement>{};

class WidgetVisitor extends RecursiveElementVisitor {
  WidgetVisitor({required this.context});
  final AnalysisContext context;
  final visitedLibraries = <LibraryElement>{};
  @override
  dynamic visitClassElement(ClassElement element) {
    final isWidget = widgetChecker.isAssignableFrom(element);

    if (isWidget &&
        element.isPublic &&
        !element.isAbstract &&
        element.isConstructable &&
        !ignoredWidgets.contains(element.name) &&
        !seenWidgets.contains(element)) {
      // Check that it has a field named 'child` which holds a widget
      final childField = getFieldFromTypeAndSuper(element, 'child');

      // Check that at least one constructor has a parameter named 'child' which holds a widget
      final hasChildParameter = element.constructors.any(
        (constructor) => constructor.parameters.any(
          (param) =>
              param.name == 'child' &&
              widgetChecker.isAssignableFromType(param.type),
        ),
      );

      /// If the widget has a child field or a constructor with a child parameter
      /// then we can go ahead and generate the pipeable mixin
      if (childField != null &&
          widgetChecker.isAssignableFromType(childField.type) &&
          hasChildParameter) {
        final childFieldisNullable =
            childField.type.nullabilitySuffix == NullabilitySuffix.question;

        final constructors = <String>[];
        outerLoop:
        for (final constructor in element.constructors) {
          // Ignore constructors that have been marked as ignored
          for (final (className, constructorName) in ignoredConstructors) {
            if (element.name == className &&
                constructor.name == constructorName) {
              continue outerLoop;
            }
          }

          // We don't support factory constructors
          if (constructor.isFactory) {
            continue;
          }
          final requiredPositionalArgs = <String>[];
          final optionalPositionalArgs = <String>[];
          final namedArgs = <String>[];
          ParameterElement? childParameter;
          for (final param in constructor.parameters) {
            final isChildParameter = param.name == 'child';
            if (isChildParameter) {
              childParameter = param;
            }

            // Add the argument to the list
            if (param.isRequiredPositional) {
              if (isChildParameter) {
                // To make this optional, we will add this to the optional positional args
                // with a @RequiredOrPiped annotation
                optionalPositionalArgs.add('@RequiredOrPiped() Widget? child');
              } else {
                requiredPositionalArgs.add('super.${param.name}');
              }
            } else if (param.isOptionalPositional) {
              if (isChildParameter) {
                // To make this optional, we will add this to the optional positional args
                // with a @RequiredOrPiped annotation
                optionalPositionalArgs.add('Widget? child');
              } else {
                optionalPositionalArgs.add('super.${param.name}');
              }
            } else if (param.isRequiredNamed) {
              if (isChildParameter) {
                namedArgs.add('@RequiredOrPiped() Widget? child');
              } else {
                namedArgs.add('required super.${param.name}');
              }
            } else if (param.isOptionalNamed) {
              if (isChildParameter) {
                namedArgs.add('Widget? child');
              } else {
                namedArgs.add('super.${param.name}');
              }
            } else {
              throw ArgumentError('Unknown parameter type');
            }
          }
          // We only want to generate the mixin for the constructor that has the child parameter
          if (childParameter == null) {
            continue;
          }

          // Create argueemnts for the constructor
          // e.g `String name, {int? age, @RequiredOrPiped() Widget? child}`
          var args = '';
          if (requiredPositionalArgs.isNotEmpty) {
            args += requiredPositionalArgs.join(', ');
          }
          if (optionalPositionalArgs.isNotEmpty) {
            if (args.isNotEmpty) {
              args += ', ';
            }
            args += "[${optionalPositionalArgs.join(", ")}]";
          }
          if (namedArgs.isNotEmpty) {
            if (args.isNotEmpty) {
              args += ', ';
            }
            args += "{${namedArgs.join(", ")}}";
          }

          /// If the constructor is named, the name with a dot will be added
          /// e.g `.myNamedConstructor`
          final constructorName =
              constructor.name == '' ? '' : '.${constructor.name}';

          /// Create the constructor which will call the super constructor
          /// : super(name, age: age)
          final superConstructor = childParameter.isOptional
              ? ''
              : childParameter.isPositional
                  ? ': super$constructorName(temporaryWidget)'
                  : ': super$constructorName(child: temporaryWidget)';

          constructors.add("""
  \$${element.name}${constructor.name == "" ? "" : ".${constructor.name}"}($args) $superConstructor {
    if (child != null) {
        this.child = child;
      }
  }
""");
        }
        final widgetType = childFieldisNullable ? 'Widget?' : 'Widget';
        if (constructors.isEmpty) {
          return super.visitClassElement(element);
        }

        template += """
// ignore: must_be_immutable
class \$${element.name} extends ${element.name}  with PipableMixin<$widgetType> {
  ${constructors.join("\n")}

@override
  set child($widgetType value) {
    \$child = value;
  }
  }
""";
        seenWidgets.add(element);
      }
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
      visitedLibraries.add(element);
      element.visitChildren(this);
    }
  }
}

FieldElement? getFieldFromTypeAndSuper(ClassElement element, String fieldName) {
  var field = element.getField(fieldName);
  if (field == null) {
    for (final superType in element.allSupertypes) {
      field = superType.element.getField(fieldName);
      if (field != null) {
        break;
      }
    }
    return field;
  }
  return field;
}
