import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class $Column extends StatelessWidget {
  const $Column({
    super.key,
    this.childKey,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
    this.textDirection,
    this.verticalDirection = VerticalDirection.down,
    this.textBaseline,
    this.spacing = 0.0,
    this.children = const <Widget>[],
  });

  final Key? childKey;

  final MainAxisAlignment mainAxisAlignment;

  final MainAxisSize mainAxisSize;

  final CrossAxisAlignment crossAxisAlignment;

  final TextDirection? textDirection;

  final VerticalDirection verticalDirection;

  final TextBaseline? textBaseline;

  final double spacing;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: childKey,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      spacing: spacing,
      children: children,
    );
  }
}
