import 'package:flutter/widgets.dart';

/// This class will be used by the custom linter
/// to warn the user if a mandatory parameter was not provided
/// via the pipe operator or the constructor.
class RequiredOrPiped {
  const RequiredOrPiped();
}

/// This temporary widget is used as a placeholder for
/// pipeable widgets whose child is required.
class TemporaryWidget extends StatelessWidget {
  const TemporaryWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) =>
      throw StateError('The widget $name requires that a child be provided.');
}

/// This is the base class for all pipeable widgets.
///
/// Children of this class can be connected using the pipe operator `>>`.
/// e.g
/// ```dart
/// final widget = Container() >> Center() >> Text('Hello, World!');
/// ```
// ignore: must_be_immutable
abstract class PipeableWidget<T extends Widget?> extends StatelessWidget {
  PipeableWidget({super.key, T? child}) {
    if (child != null) this.child = child;
  }

  T? _child;
  set child(T value) => _child = value;
  T get child => _child as T;

  /// Place a widget in the child property.
  PipeableWidget operator >>(PipeableWidget widget) {
    _setWidget(widget);
    _setWidget = widget._setWidget;
    return this;
  }

  /// Place a widget in the child property.
  Widget operator >>>(Widget widget) {
    _setWidget(widget);
    return this;
  }

  late Function(Widget) _setWidget = (widget) => child = widget as T;
}
