import 'package:wordsmith_app/utils/index.dart';

class SpacerSet {
  const SpacerSet();

  final SizedBox button = const SizedBox(
    height: 20,
    width: 20,
  );
  @Deprecated(Styles.placeholder)
  SizedBox small() {
    return const SizedBox(
      height: 10,
      width: 10,
    );
  }

  @Deprecated(Styles.placeholder)
  SizedBox medium() {
    return const SizedBox(
      height: 20,
      width: 20,
    );
  }

  @Deprecated(Styles.placeholder)
  SizedBox large() {
    return const SizedBox(
      height: 30,
      width: 30,
    );
  }

  @Deprecated(Styles.placeholder)
  SizedBox custom(double size) {
    return SizedBox(
      height: size,
      width: size,
    );
  }

  final SizedBox addEditCardSpacer = const SizedBox(
    height: 10,
    width: 10,
  );

  final SizedBox siteCardSpacer = const SizedBox(
    height: 10,
    width: 10,
  );
  final SizedBox chargeModeSpacer = const SizedBox(
    height: 20,
    width: 20,
  );
  final SizedBox hourMinuteCarouselSpacer = const SizedBox(
    height: 15,
    width: 15,
  );
  final SizedBox hivePassSpacer = const SizedBox(
    height: 20,
    width: 20,
  );

  final SizedBox floatingButtons = const SizedBox(
    height: 10,
    width: 10,
  );
  final SizedBox headerSubtitleSpacing = const SizedBox(height: 10, width: 10);
  final SizedBox headerBodySpacingLarge = const SizedBox(height: 40, width: 40);
  final SizedBox headerBodySpacingSmall = const SizedBox(height: 15, width: 15);
}
