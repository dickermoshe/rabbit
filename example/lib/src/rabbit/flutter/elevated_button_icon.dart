import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';

class $ElevatedButtonIcon extends StatelessWidget {
  $ElevatedButtonIcon({
    super.key,
    this.childKey,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    this.autofocus,
    this.clipBehavior,
    this.statesController,
    this.icon,
    required this.label,
    this.iconAlignment = IconAlignment.start,
  });

  final Key? childKey;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final ButtonStyle? style;

  final FocusNode? focusNode;

  final bool? autofocus;

  final Clip? clipBehavior;

  final WidgetStatesController? statesController;

  final Widget? icon;

  final Widget label;

  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
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
      icon: icon,
      label: label,
      iconAlignment: iconAlignment,
    );
  }
}
