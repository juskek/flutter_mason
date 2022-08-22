import 'package:wordsmith_app/utils/index.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer(
      {this.height,
      this.width,
      this.color = ColorSet.black,
      this.child,
      this.cornerRadius,
      Key? key})
      : super(key: key);

  final double? height;
  final double? width;
  final double? cornerRadius;
  final Color color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: color,
          borderRadius: cornerRadius == null
              ? Styles.radii.borderRadius
              : BorderRadius.all(Radius.circular(cornerRadius!)),
        ),
        child: child ?? Container());
  }
}
