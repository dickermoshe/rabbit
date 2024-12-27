import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:rabbit/pipeable.dart';

// ignore: must_be_immutable
class $Directionality extends PipeableWidget<Widget> {
  $Directionality({
    super.key,
    required this.textDirection,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: 'Directionality'),
  });

  final TextDirection textDirection;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      key: key,
      textDirection: textDirection,
      child: child,
    );
  }
}

class $Column extends StatelessWidget {
  const $Column({
    super.key,
    required this.mainAxisAlignment,
    required this.mainAxisSize,
    required this.crossAxisAlignment,
    this.textDirection,
    required this.verticalDirection,
    this.textBaseline,
    required this.children,
  });

  final MainAxisAlignment mainAxisAlignment;

  final MainAxisSize mainAxisSize;

  final CrossAxisAlignment crossAxisAlignment;

  final TextDirection? textDirection;

  final VerticalDirection verticalDirection;

  final TextBaseline? textBaseline;

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      key: key,
      mainAxisAlignment: mainAxisAlignment,
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      textDirection: textDirection,
      verticalDirection: verticalDirection,
      textBaseline: textBaseline,
      children: children,
    );
  }
}
