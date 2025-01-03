import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that controls where a child of a [Stack] is positioned.
///
/// A [Positioned] widget must be a descendant of a [Stack], and the path from
/// the [Positioned] widget to its enclosing [Stack] must contain only
/// [StatelessWidget]s or [StatefulWidget]s (not other kinds of widgets, like
/// [RenderObjectWidget]s).
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=EgtPleVwxBQ}
///
/// If a widget is wrapped in a [Positioned], then it is a _positioned_ widget
/// in its [Stack]. If the [top] property is non-null, the top edge of this child
/// will be positioned [top] layout units from the top of the stack widget. The
/// [right], [bottom], and [left] properties work analogously.
///
/// If both the [top] and [bottom] properties are non-null, then the child will
/// be forced to have exactly the height required to satisfy both constraints.
/// Similarly, setting the [right] and [left] properties to non-null values will
/// force the child to have a particular width. Alternatively the [width] and
/// [height] properties can be used to give the dimensions, with one
/// corresponding position property (e.g. [top] and [height]).
///
/// If all three values on a particular axis are null, then the
/// [Stack.alignment] property is used to position the child.
///
/// If all six values are null, the child is a non-positioned child. The [Stack]
/// uses only the non-positioned children to size itself.
///
/// See also:
///
///  * [AnimatedPositioned], which automatically transitions the child's
///    position over a given duration whenever the given position changes.
///  * [PositionedTransition], which takes a provided [Animation] to transition
///    changes in the child's position over a given duration.
///  * [PositionedDirectional], which adapts to the ambient [Directionality].

// ignore: must_be_immutable
class $PositionedFromRelativeRect extends PipeableWidget<Widget> {
  /// Creates a Positioned object with the values from the given [RelativeRect].
  ///
  /// This sets the [left], [top], [right], and [bottom] properties from the
  /// given [RelativeRect]. The [height] and [width] properties are set to null.
  $PositionedFromRelativeRect({
    super.key,
    this.childKey,
    required this.rect,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\$PositionedFromRelativeRect'),
  });

  final Key? childKey;

  final RelativeRect rect;

  @override
  Widget build(BuildContext context) {
    return Positioned.fromRelativeRect(
      key: childKey,
      rect: rect,
      child: child,
    );
  }
}
