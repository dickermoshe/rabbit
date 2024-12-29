import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Displays a diagonal message above the corner of another widget.
///
/// Useful for showing the execution mode of an app (e.g., that asserts are
/// enabled.)
///
/// See also:
///
///  * [CheckedModeBanner], which the [WidgetsApp] widget includes by default in
///    debug mode, to show a banner that says "DEBUG".

// ignore: must_be_immutable
class $Banner extends PipeableWidget<Widget?> {
  /// Creates a banner.
  $Banner({
    super.key,
    this.childKey,
    super.child,
    required this.message,
    this.textDirection,
    required this.location,
    this.layoutDirection,
    required this.color,
    required this.textStyle,
    required this.shadow,
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

  /// The message to show in the banner.
  final String message;

  /// The directionality of the text.
  ///
  /// This is used to disambiguate how to render bidirectional text. For
  /// example, if the message is an English phrase followed by a Hebrew phrase,
  /// in a [TextDirection.ltr] context the English phrase will be on the left
  /// and the Hebrew phrase to its right, while in a [TextDirection.rtl]
  /// context, the English phrase will be on the right and the Hebrew phrase on
  /// its left.
  ///
  /// Defaults to the ambient [Directionality], if any.
  ///
  /// See also:
  ///
  ///  * [layoutDirection], which controls the interpretation of the [location].
  final TextDirection? textDirection;

  /// Where to show the banner (e.g., the upper right corner).
  final BannerLocation location;

  /// The directionality of the layout.
  ///
  /// This is used to resolve the [location] values.
  ///
  /// Defaults to the ambient [Directionality], if any.
  ///
  /// See also:
  ///
  ///  * [textDirection], which controls the reading direction of the [message].
  final TextDirection? layoutDirection;

  /// The color of the banner.
  final Color color;

  /// The style of the text shown on the banner.
  final TextStyle textStyle;

  /// The shadow properties for the banner.
  ///
  /// Use a [BoxShadow] object to define the shadow's color, blur radius,
  /// and spread radius. These properties can be used to create different
  /// shadow effects.
  final BoxShadow shadow;

  @override
  Widget build(BuildContext context) {
    return Banner(
      key: childKey,
      child: child,
      message: message,
      textDirection: textDirection,
      location: location,
      layoutDirection: layoutDirection,
      color: color,
      textStyle: textStyle,
      shadow: shadow,
    );
  }
}
