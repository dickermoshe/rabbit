import 'flutter.dart';

// No argument constructor
class Container extends Widget {
  Container();
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Only positional arguments
class Text extends Widget {
  Text(String text);
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Only named arguments
class Padding extends Widget {
  Padding({required Widget child});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Both positional and named arguments
class SizedBox extends Widget {
  SizedBox({required double width, required double height});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Optional positional arguments
class Center extends Widget {
  Center([Widget? child]);
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Positional arguments with default values
class Column extends Widget {
  Column([List<Widget> children = const []]);
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Named arguments with default values
class Row extends Widget {
  Row({List<Widget> children = const []});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Both positional and named arguments with default values
class Expanded extends Widget {
  Expanded({Widget? child, int flex = 1});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Positional arguments with default values
class Positioned extends Widget {
  Positioned({required Widget child, double left = 0.0, double top = 0.0});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Named arguments with default values
class Align extends Widget {
  Align({required Widget child, int alignment = 1});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Required positional and optional positional arguments
class AspectRatio extends Widget {
  AspectRatio(double aspectRatio, [Widget? child]);
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Required named and optional named arguments
class ClipRRect extends Widget {
  final int borderRadius;
  ClipRRect({required int this.borderRadius, Widget? child});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Required positional and optional named arguments
class ClipOval extends Widget {
  ClipOval(int clipBehavior, {Widget? child});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Extend a class and use super.foo in the constructor

// Positional arguments
class MyText extends Text {
  MyText(super.text);
}

// Named arguments
class MyPadding extends Padding {
  MyPadding({required super.child});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Both positional and named arguments
class MySizedBox extends SizedBox {
  MySizedBox({required super.width, required super.height});
  @override
  Widget build(BuildContext context) {
    return this;
  }
}

// Optional positional arguments
class MyCenter extends Center {
  MyCenter([super.child]);
}

// Positional arguments with default values
class MyColumn extends Column {
  MyColumn([super.children = const []]);
}

// Named arguments with default values
class MyRow extends Row {
  MyRow({super.children = const []});
}

// Both positional and named arguments with default values
class MyExpanded extends Expanded {
  MyExpanded({super.child, super.flex = 1});
}

// Positional arguments with default values
class MyPositioned extends Positioned {
  MyPositioned({required super.child, super.left = 0.0, super.top = 0.0});
}

// Named arguments with default values
class MyAlign extends Align {
  MyAlign({required super.child, super.alignment = 1});
}

// Required positional and optional positional arguments
class MyAspectRatio extends AspectRatio {
  MyAspectRatio(super.aspectRatio, [super.child]);
}

// Required named and optional named arguments
class MyClipRRect extends ClipRRect {
  MyClipRRect({required super.borderRadius, super.child});
}

// Required positional and optional named arguments
class MyClipOval1 extends ClipOval {
  final Shader Function(Rect) shaderCallback;
  MyClipOval1(super.clipBehavior, this.shaderCallback, {super.child});
}
