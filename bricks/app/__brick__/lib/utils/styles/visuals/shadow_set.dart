import 'package:wordsmith_app/utils/index.dart';

class ShadowSet {
  ShadowSet();

  final double shadowElevation = 3;

  final List<BoxShadow> boxShadow = [
    BoxShadow(
      color: ColorSet.black.withOpacity(0.5),
      spreadRadius: 1,
      blurRadius: 3,
      offset: const Offset(0, 3), // changes position of shadow
    ),
  ];
}
