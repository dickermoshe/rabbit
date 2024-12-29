import 'package:rabbit/pipeable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// A widget with a preferred size.
///
/// This widget does not impose any constraints on its child, and it doesn't
/// affect the child's layout in any way. It just advertises a preferred size
/// which can be used by the parent.
///
/// Parents like [Scaffold] use [PreferredSizeWidget] to require that their
/// children implement that interface. To give a preferred size to an arbitrary
/// widget so that it can be used in a `child` property of that type, this
/// widget, [PreferredSize], can be used.
///
/// Widgets like [AppBar] implement a [PreferredSizeWidget], so that this
/// [PreferredSize] widget is not necessary for them.
///
/// {@tool dartpad}
/// This sample shows a custom widget, similar to an [AppBar], which uses a
/// [PreferredSize] widget, with its height set to 80 logical pixels.
/// Changing the [PreferredSize] can be used to change the height
/// of the custom app bar.
///
/// ** See code in examples/api/lib/widgets/preferred_size/preferred_size.0.dart **
/// {@end-tool}
///
/// See also:
///
///  * [AppBar.bottom] and [Scaffold.appBar], which require preferred size widgets.
///  * [PreferredSizeWidget], the interface which this widget implements to expose
///    its preferred size.
///  * [AppBar] and [TabBar], which implement PreferredSizeWidget.

// ignore: must_be_immutable
class $PreferredSize extends PipeableWidget<Widget> {
  /// Creates a widget that has a preferred size that the parent can query.
  $PreferredSize({
    super.key,
    this.childKey,
    required this.preferredSize,
    @RequiredOrPiped()
    super.child = const TemporaryWidget(name: '\$PreferredSize'),
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

  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      key: childKey,
      preferredSize: preferredSize,
      child: child,
    );
  }
}
