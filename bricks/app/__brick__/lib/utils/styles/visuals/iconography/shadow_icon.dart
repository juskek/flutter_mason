import 'package:wordsmith_app/utils/index.dart';

class ShadowIcon extends StatelessWidget {
  const ShadowIcon(
      {required this.child,
      this.shadowColor = ColorSet.black,
      this.blurRadius = 25,
      Key? key})
      : super(key: key);
  final Icon child;
  final Color shadowColor;
  final double blurRadius;
  @override
  Widget build(BuildContext context) {
    IconData iconData = child.icon!;
    double elevation = 0;
    return Stack(
      alignment: Alignment.center,
      children: [
        Text(
          String.fromCharCode(iconData.codePoint),
          style: TextStyle(
            fontFamily: iconData.fontFamily,
            fontSize: child.size,
            shadows: <Shadow>[
              Shadow(
                offset: Offset(elevation, elevation),
                blurRadius: blurRadius,
                color: shadowColor,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
