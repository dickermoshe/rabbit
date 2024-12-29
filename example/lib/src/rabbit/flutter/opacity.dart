import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that makes its child partially transparent.
///
/// This class paints its child into an intermediate buffer and then blends the
/// child back into the scene partially transparent.
///
/// For values of opacity other than 0.0 and 1.0, this class is relatively
/// expensive because it requires painting the child into an intermediate
/// buffer. For the value 0.0, the child is not painted at all. For the
/// value 1.0, the child is painted immediately without an intermediate buffer.
///
/// The presence of the intermediate buffer which has a transparent background
/// by default may cause some child widgets to behave differently. For example
/// a [BackdropFilter] child will only be able to apply its filter to the content
/// between this widget and the backdrop child and may require adjusting the
/// [BackdropFilter.blendMode] property to produce the desired results.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=9hltevOHQBw}
///
/// {@tool snippet}
///
/// This example shows some [Text] when the `_visible` member field is true, and
/// hides it when it is false:
///
/// ```dart
/// Opacity(
///   opacity: _visible ? 1.0 : 0.0,
///   child: const Text("Now you see me, now you don't!"),
/// )
/// ```
/// {@end-tool}
///
/// This is more efficient than adding and removing the child widget from the
/// tree on demand.
///
/// ## Performance considerations for opacity animation
///
/// Animating an [Opacity] widget directly causes the widget (and possibly its
/// subtree) to rebuild each frame, which is not very efficient. Consider using
/// one of these alternative widgets instead:
///
///  * [AnimatedOpacity], which uses an animation internally to efficiently
///    animate opacity.
///  * [FadeTransition], which uses a provided animation to efficiently animate
///    opacity.
///
/// ## Transparent image
///
/// If only a single [Image] or [Color] needs to be composited with an opacity
/// between 0.0 and 1.0, it's much faster to directly use them without [Opacity]
/// widgets.
///
/// For example, `Container(color: Color.fromRGBO(255, 0, 0, 0.5))` is much
/// faster than `Opacity(opacity: 0.5, child: Container(color: Colors.red))`.
///
/// {@tool snippet}
///
/// The following example draws an [Image] with 0.5 opacity without using
/// [Opacity]:
///
/// ```dart
/// Image.network(
///   'https://raw.githubusercontent.com/flutter/assets-for-api-docs/main/packages/diagrams/assets/blend_mode_destination.jpeg',
///   color: const Color.fromRGBO(255, 255, 255, 0.5),
///   colorBlendMode: BlendMode.modulate
/// )
/// ```
///
/// {@end-tool}
///
/// Directly drawing an [Image] or [Color] with opacity is faster than using
/// [Opacity] on top of them because [Opacity] could apply the opacity to a
/// group of widgets and therefore a costly offscreen buffer will be used.
/// Drawing content into the offscreen buffer may also trigger render target
/// switches and such switching is particularly slow in older GPUs.
///
/// ## Hit testing
///
/// Setting the [opacity] to zero does not prevent hit testing from being applied
/// to the descendants of the [Opacity] widget. This can be confusing for the
/// user, who may not see anything, and may believe the area of the interface
/// where the [Opacity] is hiding a widget to be non-interactive.
///
/// With certain widgets, such as [Flow], that compute their positions only when
/// they are painted, this can actually lead to bugs (from unexpected geometry
/// to exceptions), because those widgets are not painted by the [Opacity]
/// widget at all when the [opacity] is zero.
///
/// To avoid such problems, it is generally a good idea to use an
/// [IgnorePointer] widget when setting the [opacity] to zero. This prevents
/// interactions with any children in the subtree.
///
/// See also:
///
///  * [Visibility], which can hide a child more efficiently (albeit less
///    subtly, because it is either visible or hidden, rather than allowing
///    fractional opacity values). Specifically, the [Visibility.maintain]
///    constructor is equivalent to using an opacity widget with values of
///    `0.0` or `1.0`.
///  * [ShaderMask], which can apply more elaborate effects to its child.
///  * [Transform], which applies an arbitrary transform to its child widget at
///    paint time.
///  * [SliverOpacity], the sliver version of this widget.

// ignore: must_be_immutable
class $Opacity extends PipeableWidget<Widget?> {
  /// Creates a widget that makes its child partially transparent.
  ///
  /// The [opacity] argument must be between zero and one, inclusive.
  $Opacity({
    super.key,
    this.childKey,
    required this.opacity,
    this.alwaysIncludeSemantics = false,
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

  /// The fraction to scale the child's alpha value.
  ///
  /// An opacity of one is fully opaque. An opacity of zero is fully transparent
  /// (i.e., invisible).
  ///
  /// Values one and zero are painted with a fast path. Other values require
  /// painting the child into an intermediate buffer, which is expensive.
  final double opacity;

  /// Whether the semantic information of the children is always included.
  ///
  /// Defaults to false.
  ///
  /// When true, regardless of the opacity settings the child semantic
  /// information is exposed as if the widget were fully visible. This is
  /// useful in cases where labels may be hidden during animations that
  /// would otherwise contribute relevant semantics.
  final bool alwaysIncludeSemantics;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      key: childKey,
      opacity: opacity,
      alwaysIncludeSemantics: alwaysIncludeSemantics,
      child: child,
    );
  }
}
