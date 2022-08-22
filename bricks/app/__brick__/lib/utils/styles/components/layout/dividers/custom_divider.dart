import 'package:wordsmith_app/utils/index.dart';

// todo refactor this into padded divider
/// DEPRECATED
class CustomDivider extends StatelessWidget {
  /// This divider determines its main length by a percentage of its parent.

  const CustomDivider(
      {this.vertical = false,
      this.dark = false,
      this.percentLength = 0.9,
      Key? key})
      : super(key: key);
  final bool vertical; // horizontal divider by default
  final bool dark; // light divider by default
  final double percentLength;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Container(
        height: vertical ? constraints.maxHeight * percentLength : 1,
        width: vertical ? 1 : constraints.maxWidth * percentLength,
        color: dark ? ColorSet.black : ColorSet.oysterBay,
      ),
    );
  }
}
