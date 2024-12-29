import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class $ElevatedButton extends PipeableWidget<Widget?> {
  $ElevatedButton({
    super.key,
    this.childKey,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior,
    this.statesController,
    super.child,
    this.iconAlignment = IconAlignment.start,
  });

  final Key? childKey;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final ButtonStyle? style;

  final FocusNode? focusNode;

  final bool autofocus;

  final Clip? clipBehavior;

  final WidgetStatesController? statesController;

  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: childKey,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      child: child,
      iconAlignment: iconAlignment,
    );
  }
}
