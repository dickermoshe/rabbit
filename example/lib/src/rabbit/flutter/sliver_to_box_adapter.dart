import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A sliver that contains a single box widget.
///
/// Slivers are special-purpose widgets that can be combined using a
/// [CustomScrollView] to create custom scroll effects. A [SliverToBoxAdapter]
/// is a basic sliver that creates a bridge back to one of the usual box-based
/// widgets.
///
/// _To learn more about slivers, see [CustomScrollView.slivers]._
///
/// Rather than using multiple [SliverToBoxAdapter] widgets to display multiple
/// box widgets in a [CustomScrollView], consider using [SliverList],
/// [SliverFixedExtentList], [SliverPrototypeExtentList], or [SliverGrid],
/// which are more efficient because they instantiate only those children that
/// are actually visible through the scroll view's viewport.
///
/// See also:
///
///  * [CustomScrollView], which displays a scrollable list of slivers.
///  * [SliverList], which displays multiple box widgets in a linear array.
///  * [SliverFixedExtentList], which displays multiple box widgets with the
///    same main-axis extent in a linear array.
///  * [SliverPrototypeExtentList], which displays multiple box widgets with the
///    same main-axis extent as a prototype item, in a linear array.
///  * [SliverGrid], which displays multiple box widgets in arbitrary positions.

// ignore: must_be_immutable
class $SliverToBoxAdapter extends PipeableWidget<Widget?> {
  /// Creates a sliver that contains a single box widget.
  $SliverToBoxAdapter({
    super.key,
    this.childKey,
    super.child,
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

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      key: childKey,
      child: child,
    );
  }
}
