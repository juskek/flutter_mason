import 'package:honeycomb_app/utils/index.dart';

class CustomAnimatedPositioned extends StatelessWidget {
  const CustomAnimatedPositioned({
    required this.child,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    Key? key,
  }) : super(key: key);
  final Widget child;

  final double? left;
  final double? top;
  final double? right;
  final double? bottom;
  final double? width;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      child: child,
      duration: const Duration(
        milliseconds: 300,
      ),
      curve: Curves.easeOut,
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      width: width,
      height: height,
    );
  }
}
