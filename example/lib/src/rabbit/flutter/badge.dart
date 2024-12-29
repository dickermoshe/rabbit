import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class $Badge extends PipeableWidget<Widget?> {
  $Badge({
    super.key,
    this.childKey,
    this.backgroundColor,
    this.textColor,
    this.smallSize,
    this.largeSize,
    this.textStyle,
    this.padding,
    this.alignment,
    this.offset,
    this.label,
    this.isLabelVisible = true,
    super.child,
  });

  final Key? childKey;

  final Color? backgroundColor;

  final Color? textColor;

  final double? smallSize;

  final double? largeSize;

  final TextStyle? textStyle;

  final EdgeInsetsGeometry? padding;

  final AlignmentGeometry? alignment;

  final Offset? offset;

  final Widget? label;

  final bool isLabelVisible;

  @override
  Widget build(BuildContext context) {
    return Badge(
      key: childKey,
      backgroundColor: backgroundColor,
      textColor: textColor,
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle,
      padding: padding,
      alignment: alignment,
      offset: offset,
      label: label,
      isLabelVisible: isLabelVisible,
      child: child,
    );
  }
}
