import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that expands a child of a [Row], [Column], or [Flex]
/// so that the child fills the available space.
///
/// Using an [Expanded] widget makes a child of a [Row], [Column], or [Flex]
/// expand to fill the available space along the main axis (e.g., horizontally for
/// a [Row] or vertically for a [Column]). If multiple children are expanded,
/// the available space is divided among them according to the [flex] factor.
///
/// An [Expanded] widget must be a descendant of a [Row], [Column], or [Flex],
/// and the path from the [Expanded] widget to its enclosing [Row], [Column], or
/// [Flex] must contain only [StatelessWidget]s or [StatefulWidget]s (not other
/// kinds of widgets, like [RenderObjectWidget]s).
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=_rnZaagadyo}
///
/// {@tool dartpad}
/// This example shows how to use an [Expanded] widget in a [Column] so that
/// its middle child, a [Container] here, expands to fill the space.
///
/// ![This results in two thin blue boxes with a larger amber box in between.](https://flutter.github.io/assets-for-api-docs/assets/widgets/expanded_column.png)
///
/// ** See code in examples/api/lib/widgets/basic/expanded.0.dart **
/// {@end-tool}
///
/// {@tool dartpad}
/// This example shows how to use an [Expanded] widget in a [Row] with multiple
/// children expanded, utilizing the [flex] factor to prioritize available space.
///
/// ![This results in a wide amber box, followed by a thin blue box, with a medium width amber box at the end.](https://flutter.github.io/assets-for-api-docs/assets/widgets/expanded_row.png)
///
/// ** See code in examples/api/lib/widgets/basic/expanded.1.dart **
/// {@end-tool}
///
/// See also:
///
///  * [Flexible], which does not force the child to fill the available space.
///  * [Spacer], a widget that takes up space proportional to its flex value.
///  * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).

// ignore: must_be_immutable
class $Expanded extends PipeableWidget<Widget> {
  /// Creates a widget that expands a child of a [Row], [Column], or [Flex]
  /// so that the child fills the available space along the flex widget's
  /// main axis.
  $Expanded({
    super.key,
    this.childKey,
    this.flex = 1,
    @RequiredOrPiped() super.child = const TemporaryWidget(name: '\$Expanded'),
  });

  final Key? childKey;

  /// The flex factor to use for this child.
  ///
  /// If null or zero, the child is inflexible and determines its own size. If
  /// non-zero, the amount of space the child can occupy in the main axis is
  /// determined by dividing the free space (after placing the inflexible
  /// children) according to the flex factors of the flexible children.
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      key: childKey,
      flex: flex,
      child: child,
    );
  }
}
