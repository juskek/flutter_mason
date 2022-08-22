import 'package:wordsmith_app/utils/index.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: ColorSet.black, borderRadius: Styles.radii.borderRadius),
    );
  }
}
