import 'package:wordsmith_app/utils/index.dart';

class CustomSpacer extends StatelessWidget {
  const CustomSpacer({required this.size, Key? key}) : super(key: key);

  /// Size 10
  const CustomSpacer.small({Key? key})
      : size = 10,
        super(key: key);

  /// Size 20
  const CustomSpacer.medium({Key? key})
      : size = 20,
        super(key: key);

  /// Size 30
  const CustomSpacer.large({Key? key})
      : size = 30,
        super(key: key);

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
    );
  }
}
