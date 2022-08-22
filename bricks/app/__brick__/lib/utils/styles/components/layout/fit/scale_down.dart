import 'package:wordsmith_app/utils/index.dart';

class ScaleDown extends StatelessWidget {
  const ScaleDown({required this.child, Key? key})
      : fit = BoxFit.scaleDown,
        super(key: key);
  const ScaleDown.height({required this.child, Key? key})
      : fit = BoxFit.fitHeight,
        super(key: key);
  const ScaleDown.width({required this.child, Key? key})
      : fit = BoxFit.fitWidth,
        super(key: key);

  final BoxFit fit;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: fit,
      child: child,
    );
  }
}
