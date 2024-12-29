import 'package:flutter/material.dart';

/// A Material Design "Outlined Button"; essentially a [TextButton]
/// with an outlined border.
///
/// Outlined buttons are medium-emphasis buttons. They contain actions
/// that are important, but they aren’t the primary action in an app.
///
/// An outlined button is a label [child] displayed on a (zero
/// elevation) [Material] widget. The label's [Text] and [Icon]
/// widgets are displayed in the [style]'s
/// [ButtonStyle.foregroundColor] and the outline's weight and color
/// are defined by [ButtonStyle.side]. The button reacts to touches
/// by filling with the [style]'s [ButtonStyle.overlayColor].
///
/// The outlined button's default style is defined by [defaultStyleOf].
/// The style of this outline button can be overridden with its [style]
/// parameter. The style of all text buttons in a subtree can be
/// overridden with the [OutlinedButtonTheme] and the style of all of the
/// outlined buttons in an app can be overridden with the [Theme]'s
/// [ThemeData.outlinedButtonTheme] property.
///
/// Unlike [TextButton] or [ElevatedButton], outline buttons have a
/// default [ButtonStyle.side] which defines the appearance of the
/// outline. Because the default `side` is non-null, it
/// unconditionally overrides the shape's [OutlinedBorder.side]. In
/// other words, to specify an outlined button's shape _and_ the
/// appearance of its outline, both the [ButtonStyle.shape] and
/// [ButtonStyle.side] properties must be specified.
///
/// {@tool dartpad}
/// Here is an example of a basic [OutlinedButton].
///
/// ** See code in examples/api/lib/material/outlined_button/outlined_button.0.dart **
/// {@end-tool}
///
/// The static [styleFrom] method is a convenient way to create a
/// outlined button [ButtonStyle] from simple values.
///
/// See also:
///
///  * [ElevatedButton], a filled button whose material elevates when pressed.
///  * [FilledButton], a filled button that doesn't elevate when pressed.
///  * [FilledButton.tonal], a filled button variant that uses a secondary fill color.
///  * [TextButton], a button with no outline or fill color.
///  * <https://material.io/design/components/buttons.html>
///  * <https://m3.material.io/components/buttons>
class $OutlinedButtonIcon extends StatelessWidget {
  /// Create a text button from a pair of widgets that serve as the button's
  /// [icon] and [label].
  ///
  /// The icon and label are arranged in a row and padded by 12 logical pixels
  /// at the start, and 16 at the end, with an 8 pixel gap in between.
  ///
  /// If [icon] is null, will create an [OutlinedButton] instead.
  ///
  /// {@macro flutter.material.ButtonStyleButton.iconAlignment}
  ///
  $OutlinedButtonIcon({
    super.key,
    this.childKey,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    this.autofocus,
    this.clipBehavior,
    this.statesController,
    this.icon,
    required this.label,
    this.iconAlignment = IconAlignment.start,
  });

  final Key? childKey;

  final VoidCallback? onPressed;

  final VoidCallback? onLongPress;

  final ValueChanged<bool>? onHover;

  final ValueChanged<bool>? onFocusChange;

  final ButtonStyle? style;

  final FocusNode? focusNode;

  final bool? autofocus;

  final Clip? clipBehavior;

  final WidgetStatesController? statesController;

  final Widget? icon;

  final Widget label;

  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      key: childKey,
      onPressed: onPressed,
      onLongPress: onLongPress,
      onHover: onHover,
      onFocusChange: onFocusChange,
      style: style,
      focusNode: focusNode,
      autofocus: autofocus,
      clipBehavior: clipBehavior,
      statesController: statesController,
      icon: icon,
      label: label,
      iconAlignment: iconAlignment,
    );
  }
}
