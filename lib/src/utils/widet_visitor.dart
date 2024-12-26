import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

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
