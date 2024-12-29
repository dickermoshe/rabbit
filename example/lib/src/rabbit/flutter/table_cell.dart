import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that controls how a child of a [Table] is aligned.
///
/// A [TableCell] widget must be a descendant of a [Table], and the path from
/// the [TableCell] widget to its enclosing [Table] must contain only
/// [TableRow]s, [StatelessWidget]s, or [StatefulWidget]s (not
/// other kinds of widgets, like [RenderObjectWidget]s).
///
/// To create an empty [TableCell], provide a [SizedBox.shrink]
/// as the [child].

// ignore: must_be_immutable
class $TableCell extends PipeableWidget<Widget> {
  /// Creates a widget that controls how a child of a [Table] is aligned.
  $TableCell({
    super.key,
    this.childKey,
    this.verticalAlignment,
    @RequiredOrPiped() super.child = const TemporaryWidget(name: '\$TableCell'),
  });

  final Key? childKey;

  /// How this cell is aligned vertically.
  final TableCellVerticalAlignment? verticalAlignment;

  @override
  Widget build(BuildContext context) {
    return TableCell(
      key: childKey,
      verticalAlignment: verticalAlignment,
      child: child,
    );
  }
}
