import 'package:wordsmith_app/utils/index.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer(
      {required this.radius,
      this.color = ColorSet.black,
      this.outlineColor = ColorSet.black,
      this.outlineWidth = 1,
      this.child,
      Key? key})
      : super(key: key);

  final double radius;
  final Color color;
  final Color outlineColor;
  final double outlineWidth;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: radius * 2,
        width: radius * 2,
        alignment: Alignment.center, // stop child from filling parent
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: outlineColor, width: outlineWidth),
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: child ?? Container());
  }
}
