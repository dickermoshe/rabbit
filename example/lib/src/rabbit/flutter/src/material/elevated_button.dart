import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';

class $ElevatedButton extends StatelessWidget {
  $ElevatedButton({
    this.key,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    required this.autofocus,
    this.clipBehavior,
    this.statesController,
    this.child,
    required this.iconAlignment,
  });

  final Key? key;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final ButtonStyle? style;

  final FocusNode? focusNode;

  final bool autofocus;

  final Clip? clipBehavior;

  final WidgetStatesController? statesController;

  final Widget? child;

  final IconAlignment iconAlignment;

  Widget build(BuildContext context) {
    return ElevatedButton(
      key: key,
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

class $ElevatedButtonIcon extends StatelessWidget {
  $ElevatedButtonIcon({
    this.key,
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
    required this.iconAlignment,
  });

  final Key? key;

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

  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      key: key,
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
