import 'package:flutter/material.dart';
import 'package:flutter/src/material/elevated_button.dart';
import 'package:rabbit/pipeable.dart';

// ignore: must_be_immutable
class $ElevatedButton extends PipeableWidget<Widget?> {
  $ElevatedButton({
    super.key,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    required this.autofocus,
    this.clipBehavior,
    this.statesController,
    super.child,
    required this.iconAlignment,
  });

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
  const $ElevatedButtonIcon({
    super.key,
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
