import 'package:flutter/widgets.dart';

class RequiredOrPiped {
  const RequiredOrPiped();
}

class TemporaryWidget extends StatelessWidget {
  const TemporaryWidget({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) =>
      throw StateError('The widget $name requires that a child be provided.');
}

// ignore: must_be_immutable
abstract class PipeableWidget<T extends Widget?> extends StatelessWidget {
  PipeableWidget({super.key, T? child}) {
    if (child != null) this.child = child;
  }
  T? _child;
  set child(T value) => _child = value;
  T get child => _child as T;
  PipeableWidget operator >>(PipeableWidget widget) {
    setWidget(widget);
    setWidget = widget.setWidget;
    return this;
  }

  Widget operator >>>(Widget widget) {
    setWidget(widget);
    return this;
  }

  late Function(Widget) setWidget = (widget) => child = widget as T;
}
