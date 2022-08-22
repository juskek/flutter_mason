import 'dart:io' show Platform;
import 'dart:math';

import 'package:{{app_name}}/utils/index.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  const Responsive({
    Key? key,
    required this.mobile,
    this.tablet,
    required this.desktop,
  }) : super(key: key);

  static double? _devicePixelRatio;
  static double get devicePixelRatio => _devicePixelRatio ?? 1;

  static double? _safeAreaTopPadding;
  static double? _safeAreaBottomPadding;
  static const double _minimumBottomPadding = 10;

  static double get safeAreaTopPadding => _safeAreaTopPadding ?? 0;
  static double get safeAreaBottomPadding {
    if (_safeAreaBottomPadding == null) {
      return _minimumBottomPadding;
    } else {
      return max(_safeAreaBottomPadding!, _minimumBottomPadding);
    }
  }

  /// Needs to be called from app init
  static void initDevicePixelRatio(BuildContext context) {
    _devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
  }

  static MediaQuery overrideDeviceTextSizeSettings(BuildContext context,
      {required Widget child}) {
    return MediaQuery(
      // override phone text size settings
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: child,
    );
  }

  /// Needs to be called from context where safe area has not been set
  static void initSafeAreaPadding(BuildContext context) {
    _safeAreaTopPadding ??= MediaQuery.of(context).padding.top;
    _safeAreaBottomPadding ??= MediaQuery.of(context).padding.bottom;
  }

  static bool isIOS() {
    return Platform.isIOS;
  }

  static bool isAndroid() {
    return Platform.isAndroid;
  }

  static double keyboardHeight(BuildContext context) {
    final viewInsets = EdgeInsets.fromWindowPadding(
        WidgetsBinding.instance!.window.viewInsets,
        WidgetsBinding.instance!.window.devicePixelRatio);

    return viewInsets.bottom;
  }

  static bool isKeyboardOpen(BuildContext context) {
    return !(WidgetsBinding.instance!.window.viewInsets.bottom == 0);
  }

  static double percentWidth(BuildContext context, double percent) {
    return MediaQuery.of(context).size.width * percent / 100;
  }

  static double percentHeight(BuildContext context, double percent) {
    return MediaQuery.of(context).size.height * percent / 100;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static Size sizeOfScreen(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1200 &&
      MediaQuery.of(context).size.width >= 850;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1200;

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1200) {
      return desktop;
    } else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }

  // static Future<bool> isFirstTimeAppLaunched() async {
  //   return await IsFirstRun.isFirstRun();
  // }
  //todo
  // Color backgroundColor(BuildContext context) {

  // }

}
