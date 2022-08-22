import 'package:wordsmith_app/utils/index.dart';

class UnderlineContainer extends StatelessWidget {
  const UnderlineContainer({
    required this.child,
    this.underlineThickness = 1,
    this.width = double.infinity,
    this.childUnderlineSpacing = 15,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final double width;
  final double underlineThickness;
  final double childUnderlineSpacing;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, childUnderlineSpacing),
        child: child,
      ),
      decoration: BoxDecoration(
          border: BorderDirectional(
              bottom: BorderSide(
        color: ColorSet.black,
        width: underlineThickness,
      ))),
    );
  }
}
