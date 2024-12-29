import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class $BadgeCount extends PipeableWidget<Widget?> {
  $BadgeCount({
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
    required this.count,
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

  final int count;

  final bool isLabelVisible;

  @override
  Widget build(BuildContext context) {
    return Badge.count(
      key: childKey,
      backgroundColor: backgroundColor,
      textColor: textColor,
      smallSize: smallSize,
      largeSize: largeSize,
      textStyle: textStyle,
      padding: padding,
      alignment: alignment,
      offset: offset,
      count: count,
      isLabelVisible: isLabelVisible,
      child: child,
    );
  }
}
