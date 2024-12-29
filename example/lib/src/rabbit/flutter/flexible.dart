import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that controls how a child of a [Row], [Column], or [Flex] flexes.
///
/// Using a [Flexible] widget gives a child of a [Row], [Column], or [Flex]
/// the flexibility to expand to fill the available space in the main axis
/// (e.g., horizontally for a [Row] or vertically for a [Column]), but, unlike
/// [Expanded], [Flexible] does not require the child to fill the available
/// space.
///
/// A [Flexible] widget must be a descendant of a [Row], [Column], or [Flex],
/// and the path from the [Flexible] widget to its enclosing [Row], [Column], or
/// [Flex] must contain only [StatelessWidget]s or [StatefulWidget]s (not other
/// kinds of widgets, like [RenderObjectWidget]s).
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=CI7x0mAZiY0}
///
/// See also:
///
///  * [Expanded], which forces the child to expand to fill the available space.
///  * [Spacer], a widget that takes up space proportional to its flex value.
///  * The [catalog of layout widgets](https://flutter.dev/widgets/layout/).

// ignore: must_be_immutable
class $Flexible extends PipeableWidget<Widget> {
  /// Creates a widget that controls how a child of a [Row], [Column], or [Flex]
  /// flexes.
  $Flexible({
    super.key,
    this.childKey,
    this.flex = 1,
    this.fit = FlexFit.loose,
    @RequiredOrPiped() super.child = const TemporaryWidget(name: '\$Flexible'),
  });

  final Key? childKey;

  /// The flex factor to use for this child.
  ///
  /// If null or zero, the child is inflexible and determines its own size. If
  /// non-zero, the amount of space the child can occupy in the main axis is
  /// determined by dividing the free space (after placing the inflexible
  /// children) according to the flex factors of the flexible children.
  final int flex;

  /// How a flexible child is inscribed into the available space.
  ///
  /// If [flex] is non-zero, the [fit] determines whether the child fills the
  /// space the parent makes available during layout. If the fit is
  /// [FlexFit.tight], the child is required to fill the available space. If the
  /// fit is [FlexFit.loose], the child can be at most as large as the available
  /// space (but is allowed to be smaller).
  final FlexFit fit;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      key: childKey,
      flex: flex,
      fit: fit,
      child: child,
    );
  }
}
