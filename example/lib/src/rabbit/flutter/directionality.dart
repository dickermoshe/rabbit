import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget that determines the ambient directionality of text and
/// text-direction-sensitive render objects.
///
/// For example, [Padding] depends on the [Directionality] to resolve
/// [EdgeInsetsDirectional] objects into absolute [EdgeInsets] objects.

// ignore: must_be_immutable
class $Directionality extends PipeableWidget<Widget> {
  /// Creates a widget that determines the directionality of text and
  /// text-direction-sensitive render objects.
  $Directionality({
    super.key,
    this.childKey,
    required this.textDirection,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\$Directionality'),
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

  /// The text direction for this subtree.
  final TextDirection textDirection;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      key: childKey,
      textDirection: textDirection,
      child: child,
    );
  }
}
