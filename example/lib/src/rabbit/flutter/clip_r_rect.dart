import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that clips its child using a rounded rectangle.
///
/// By default, [ClipRRect] uses its own bounds as the base rectangle for the
/// clip, but the size and location of the clip can be customized using a custom
/// [clipper].
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=eI43jkQkrvs}
///
/// {@tool dartpad}
/// This example shows various [ClipRRect]s applied to containers.
///
/// ** See code in examples/api/lib/widgets/basic/clip_rrect.0.dart **
/// {@end-tool}
///
/// ## Troubleshooting
///
/// ### Why doesn't my [ClipRRect] child have rounded corners?
///
/// When a [ClipRRect] is bigger than the child it contains, its rounded corners
/// could be drawn in unexpected positions. Make sure that [ClipRRect] and its child
/// have the same bounds (by shrinking the [ClipRRect] with a [FittedBox] or by
/// growing the child).
///
/// {@tool dartpad}
/// This example shows a [ClipRRect] that adds round corners to an image.
///
/// ** See code in examples/api/lib/widgets/basic/clip_rrect.1.dart **
/// {@end-tool}
///
/// See also:
///
///  * [CustomClipper], for information about creating custom clips.
///  * [ClipRect], for more efficient clips without rounded corners.
///  * [ClipOval], for an elliptical clip.
///  * [ClipPath], for an arbitrarily shaped clip.

// ignore: must_be_immutable
class $ClipRRect extends PipeableWidget<Widget?> {
  /// Creates a rounded-rectangular clip.
  ///
  /// The [borderRadius] defaults to [BorderRadius.zero], i.e. a rectangle with
  /// right-angled corners.
  ///
  /// If [clipper] is non-null, then [borderRadius] is ignored.
  ///
  /// If [clipBehavior] is [Clip.none], no clipping will be applied.
  $ClipRRect({
    super.key,
    this.childKey,
    this.borderRadius = BorderRadius.zero,
    this.clipper,
    this.clipBehavior = Clip.antiAlias,
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

  /// The border radius of the rounded corners.
  ///
  /// Values are clamped so that horizontal and vertical radii sums do not
  /// exceed width/height.
  ///
  /// This value is ignored if [clipper] is non-null.
  final BorderRadiusGeometry borderRadius;

  /// If non-null, determines which clip to use.
  final CustomClipper<RRect>? clipper;

  /// {@macro flutter.rendering.ClipRectLayer.clipBehavior}
  ///
  /// Defaults to [Clip.antiAlias].
  final Clip clipBehavior;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      key: childKey,
      borderRadius: borderRadius,
      clipper: clipper,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
