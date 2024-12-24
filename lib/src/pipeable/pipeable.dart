// import 'package:flutter/widgets.dart';

// class RequiredOrPiped {
//   const RequiredOrPiped();
// }

// class TemporaryWidget extends StatelessWidget {
//   const TemporaryWidget({super.key});

//   @override
//   Widget build(BuildContext context) =>
//       throw StateError('A widget should be piped to this widget');
// }

// const temporaryWidget = TemporaryWidget();

// mixin class PipableMixin<T extends Widget?> {
//   late T $child;

//   T get child => $child;

//   PipableMixin operator >>(PipableMixin widget) {
//     setWidget(widget as Widget);
//     setWidget = widget.setWidget;
//     return this as PipableMixin;
//   }

//   Widget operator >>>(Widget widget) {
//     setWidget(widget);
//     return this as Widget;
//   }

//   late void Function(Widget) setWidget = (widget) => $child = widget as T;
// }
