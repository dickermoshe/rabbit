import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class $Directionality extends PipeableWidget<Widget> {
  $Directionality({
    super.key,
    this.childKey,
    required this.textDirection,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\$Directionality'),
  });

  final Key? childKey;

  final TextDirection textDirection;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      key: childKey,
      textDirection: textDirection,
      child: child,
    );
  }
}
