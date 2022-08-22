import 'package:wordsmith_app/utils/index.dart';

class PaddedDivider extends StatelessWidget {
  /// This divider determines its main length by padding.
  const PaddedDivider({
    this.vertical = false,
    @Deprecated('use inverted or color instead') this.dark = false,
    this.inverted = false,
    this.color,
    this.padding = 20,
    Key? key,
  }) : super(key: key);
  final bool vertical; // horizontal divider by default
  @Deprecated('use inverted or color instead')
  final bool dark; // light divider by default
  final bool inverted;
  final Color? color;
  final double padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        vertical ? 0 : padding,
        vertical ? padding : 0,
        vertical ? 0 : padding,
        vertical ? padding : 0,
      ),
      child: Container(
        height: vertical ? null : 1,
        width: vertical ? 1 : null,
        color: color ??
            (inverted
                ? ColorSet.white.withOpacity(0.5)
                : ColorSet.black.withOpacity(0.5)),
      ),
    );
  }
}
