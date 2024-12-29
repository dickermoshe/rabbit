import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that controls where a child of a [Stack] is positioned without
/// committing to a specific [TextDirection].
///
/// The ambient [Directionality] is used to determine whether [start] is to the
/// left or to the right.
///
/// A [PositionedDirectional] widget must be a descendant of a [Stack], and the
/// path from the [PositionedDirectional] widget to its enclosing [Stack] must
/// contain only [StatelessWidget]s or [StatefulWidget]s (not other kinds of
/// widgets, like [RenderObjectWidget]s).
///
/// If a widget is wrapped in a [PositionedDirectional], then it is a
/// _positioned_ widget in its [Stack]. If the [top] property is non-null, the
/// top edge of this child/ will be positioned [top] layout units from the top
/// of the stack widget. The [start], [bottom], and [end] properties work
/// analogously.
///
/// If both the [top] and [bottom] properties are non-null, then the child will
/// be forced to have exactly the height required to satisfy both constraints.
/// Similarly, setting the [start] and [end] properties to non-null values will
/// force the child to have a particular width. Alternatively the [width] and
/// [height] properties can be used to give the dimensions, with one
/// corresponding position property (e.g. [top] and [height]).
///
/// See also:
///
///  * [Positioned], which specifies the widget's position visually.
///  * [Positioned.directional], which also specifies the widget's horizontal
///    position using [start] and [end] but has an explicit [TextDirection].
///  * [AnimatedPositionedDirectional], which automatically transitions
///    the child's position over a given duration whenever the given position
///    changes.

// ignore: must_be_immutable
class $PositionedDirectional extends PipeableWidget<Widget> {
  /// Creates a widget that controls where a child of a [Stack] is positioned.
  ///
  /// Only two out of the three horizontal values (`start`, `end`,
  /// [width]), and only two out of the three vertical values ([top],
  /// [bottom], [height]), can be set. In each case, at least one of
  /// the three must be null.
  ///
  /// See also:
  ///
  ///  * [Positioned.directional], which also specifies the widget's horizontal
  ///    position using [start] and [end] but has an explicit [TextDirection].
  $PositionedDirectional({
    super.key,
    this.childKey,
    this.start,
    this.top,
    this.end,
    this.bottom,
    this.width,
    this.height,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\$PositionedDirectional'),
  });

  /// Controls how one widget replaces another widget in the tree.
  ///
  /// If the [runtimeType] and [key] properties of the two widgets are
  /// [operator==], respectively, then the new widget replaces the old widget by
  /// updating the underlying element (i.e., by calling [Element.update] with the
  /// new widget). Otherwise, the old element is removed from the tree, the new
  /// widget is inflated into an element, and the new element is inserted into the
  /// tree.
  ///
  /// In addition, using a [GlobalKey] as the widget's [key] allows the element
  /// to be moved around the tree (changing parent) without losing state. When a
  /// new widget is found (its key and type do not match a previous widget in
  /// the same location), but there was a widget with that same global key
  /// elsewhere in the tree in the previous frame, then that widget's element is
  /// moved to the new location.
  ///
  /// Generally, a widget that is the only child of another widget does not need
  /// an explicit key.
  ///
  /// See also:
  ///
  ///  * The discussions at [Key] and [GlobalKey].
  final Key? childKey;

  /// The distance that the child's leading edge is inset from the leading edge
  /// of the stack.
  ///
  /// Only two out of the three horizontal values ([start], [end], [width]) can be
  /// set. The third must be null.
  final double? start;

  /// The distance that the child's top edge is inset from the top of the stack.
  ///
  /// Only two out of the three vertical values ([top], [bottom], [height]) can be
  /// set. The third must be null.
  final double? top;

  /// The distance that the child's trailing edge is inset from the trailing
  /// edge of the stack.
  ///
  /// Only two out of the three horizontal values ([start], [end], [width]) can be
  /// set. The third must be null.
  final double? end;

  /// The distance that the child's bottom edge is inset from the bottom of the stack.
  ///
  /// Only two out of the three vertical values ([top], [bottom], [height]) can be
  /// set. The third must be null.
  final double? bottom;

  /// The child's width.
  ///
  /// Only two out of the three horizontal values ([start], [end], [width]) can be
  /// set. The third must be null.
  final double? width;

  /// The child's height.
  ///
  /// Only two out of the three vertical values ([top], [bottom], [height]) can be
  /// set. The third must be null.
  final double? height;

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      key: childKey,
      start: start,
      top: top,
      end: end,
      bottom: bottom,
      width: width,
      height: height,
      child: child,
    );
  }
}
