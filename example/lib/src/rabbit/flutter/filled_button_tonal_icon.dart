import 'package:flutter/material.dart';

/// A Material Design filled button.
///
/// Filled buttons have the most visual impact after the [FloatingActionButton],
/// and should be used for important, final actions that complete a flow,
/// like **Save**, **Join now**, or **Confirm**.
///
/// A filled button is a label [child] displayed on a [Material]
/// widget. The label's [Text] and [Icon] widgets are displayed in
/// [style]'s [ButtonStyle.foregroundColor] and the button's filled
/// background is the [ButtonStyle.backgroundColor].
///
/// The filled button's default style is defined by
/// [defaultStyleOf]. The style of this filled button can be
/// overridden with its [style] parameter. The style of all filled
/// buttons in a subtree can be overridden with the
/// [FilledButtonTheme], and the style of all of the filled
/// buttons in an app can be overridden with the [Theme]'s
/// [ThemeData.filledButtonTheme] property.
///
/// The static [styleFrom] method is a convenient way to create a
/// filled button [ButtonStyle] from simple values.
///
/// If [onPressed] and [onLongPress] callbacks are null, then the
/// button will be disabled.
///
/// To create a 'filled tonal' button, use [FilledButton.tonal].
///
/// {@tool dartpad}
/// This sample produces enabled and disabled filled and filled tonal
/// buttons.
///
/// ** See code in examples/api/lib/material/filled_button/filled_button.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * [ElevatedButton], a filled button whose material elevates when pressed.
///  * [OutlinedButton], a button with an outlined border and no fill color.
///  * [TextButton], a button with no outline or fill color.
///  * <https://material.io/design/components/buttons.html>
///  * <https://m3.material.io/components/buttons>
class $FilledButtonTonalIcon extends StatelessWidget {
  /// Create a filled tonal button from [icon] and [label].
  ///
  /// The [icon] and [label] are arranged in a row with padding at the start and
  /// end and a gap between them.
  ///
  /// If [icon] is null, will create a [FilledButton.tonal] instead.
  $FilledButtonTonalIcon({
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
    return FilledButton.tonalIcon(
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
