class BuildContext {}

abstract class Widget {
  const Widget();
  Widget build(BuildContext context);
}

abstract class StatelessWidget extends Widget {
  const StatelessWidget();
  Widget build(BuildContext context);
}

class Shader {}

class Rect {}
