import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';

/// A Material Design "elevated button".
///
/// Use elevated buttons to add dimension to otherwise mostly flat
/// layouts, e.g. in long busy lists of content, or in wide
/// spaces. Avoid using elevated buttons on already-elevated content
/// such as dialogs or cards.
///
/// An elevated button is a label [child] displayed on a [Material]
/// widget whose [Material.elevation] increases when the button is
/// pressed. The label's [Text] and [Icon] widgets are displayed in
/// [style]'s [ButtonStyle.foregroundColor] and the button's filled
/// background is the [ButtonStyle.backgroundColor].
///
/// The elevated button's default style is defined by
/// [defaultStyleOf]. The style of this elevated button can be
/// overridden with its [style] parameter. The style of all elevated
/// buttons in a subtree can be overridden with the
/// [ElevatedButtonTheme], and the style of all of the elevated
/// buttons in an app can be overridden with the [Theme]'s
/// [ThemeData.elevatedButtonTheme] property.
///
/// The static [styleFrom] method is a convenient way to create a
/// elevated button [ButtonStyle] from simple values.
///
/// If [onPressed] and [onLongPress] callbacks are null, then the
/// button will be disabled.
///
/// {@tool dartpad}
/// This sample produces an enabled and a disabled ElevatedButton.
///
/// ** See code in examples/api/lib/material/elevated_button/elevated_button.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * [FilledButton], a filled button that doesn't elevate when pressed.
///  * [FilledButton.tonal], a filled button variant that uses a secondary fill color.
///  * [OutlinedButton], a button with an outlined border and no fill color.
///  * [TextButton], a button with no outline or fill color.
///  * <https://material.io/design/components/buttons.html>
///  * <https://m3.material.io/components/buttons>

// ignore: must_be_immutable
class $ElevatedButton extends PipeableWidget<Widget?> {
  /// Create an ElevatedButton.
  $ElevatedButton({
    super.key,
    this.childKey,
    this.onPressed,
    this.onLongPress,
    this.onHover,
    this.onFocusChange,
    this.style,
    this.focusNode,
    this.autofocus = false,
    this.clipBehavior,
    this.statesController,
    super.child,
    this.iconAlignment = IconAlignment.start,
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

  /// Called when the button is tapped or otherwise activated.
  ///
  /// If this callback and [onLongPress] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback? onPressed;

  /// Called when the button is long-pressed.
  ///
  /// If this callback and [onPressed] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback? onLongPress;

  /// Called when a pointer enters or exits the button response area.
  ///
  /// The value passed to the callback is true if a pointer has entered this
  /// part of the material and false if a pointer has exited this part of the
  /// material.
  final ValueChanged<bool>? onHover;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

  /// Customizes this button's appearance.
  ///
  /// Non-null properties of this style override the corresponding
  /// properties in [themeStyleOf] and [defaultStyleOf]. [WidgetStateProperty]s
  /// that resolve to non-null values will similarly override the corresponding
  /// [WidgetStateProperty]s in [themeStyleOf] and [defaultStyleOf].
  ///
  /// Null by default.
  final ButtonStyle? style;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.none] unless [ButtonStyle.backgroundBuilder] or
  /// [ButtonStyle.foregroundBuilder] is specified. In those
  /// cases the default is [Clip.antiAlias].
  final Clip? clipBehavior;

  /// {@macro flutter.material.inkwell.statesController}
  final WidgetStatesController? statesController;

  /// {@macro flutter.material.ButtonStyleButton.iconAlignment}
  final IconAlignment iconAlignment;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
      child: child,
      iconAlignment: iconAlignment,
    );
  }
}
