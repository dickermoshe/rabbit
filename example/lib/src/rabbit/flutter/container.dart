import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class $Container extends PipeableWidget<Widget?> {
  $Container({
    super.key,
    this.childKey,
    this.alignment,
    this.padding,
    this.color,
    this.decoration,
    this.foregroundDecoration,
    this.width,
    this.height,
    this.constraints,
    this.margin,
    this.transform,
    this.transformAlignment,
    super.child,
    this.clipBehavior = Clip.none,
  });

  final Key? childKey;

  final AlignmentGeometry? alignment;

  final EdgeInsetsGeometry? padding;

  final Color? color;

  final Decoration? decoration;

  final Decoration? foregroundDecoration;

  final double? width;

  final double? height;

  final BoxConstraints? constraints;

  final EdgeInsetsGeometry? margin;

  final Matrix4? transform;

  final AlignmentGeometry? transformAlignment;

  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: childKey,
      alignment: alignment,
      padding: padding,
      color: color,
      decoration: decoration,
      foregroundDecoration: foregroundDecoration,
      width: width,
      height: height,
      constraints: constraints,
      margin: margin,
      transform: transform,
      transformAlignment: transformAlignment,
      child: child,
      clipBehavior: clipBehavior,
    );
  }
}
