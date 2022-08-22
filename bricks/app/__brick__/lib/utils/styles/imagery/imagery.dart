import 'package:wordsmith_app/utils/index.dart';

class Imagery {
  Imagery();
  final Image scooter = Image.asset('assets/images/escooter.png');
  final Image lightHoneycombText =
      Image.asset('assets/images/honeycomb_text_light.png');
  final Image xiaomi_1s = Image.asset('assets/images/scooters/xiaomi_1s.png');

  @Deprecated(Styles.placeholder)
  Widget customCachedNetworkImage() {
    return const SizedBox();
  }
}
