enum Flavor {
  FLAV_DEV,
  FLAV_TEST,
  FLAV_PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.FLAV_DEV:
        return 'Example app (Dev)';
      case Flavor.FLAV_TEST:
        return 'Example app (Test)';
      case Flavor.FLAV_PROD:
        return 'Example app';
      default:
        return 'title';
    }
  }

}
