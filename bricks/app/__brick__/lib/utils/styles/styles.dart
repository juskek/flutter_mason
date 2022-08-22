import 'package:wordsmith_app/ui/styles/components/informative/notification_set.dart';
import 'package:wordsmith_app/ui/styles/components/interactive/buttons/button_set.dart';
import 'package:wordsmith_app/ui/styles/components/layout/radii/radius_set.dart';
import 'package:wordsmith_app/ui/styles/components/layout/spacers/spacer_set.dart';
import 'package:wordsmith_app/ui/styles/visuals/iconography/iconography.dart';
import 'package:wordsmith_app/ui/styles/visuals/typography/typography_set.dart';

// ! exports
export 'package:wordsmith_app/ui/styles/components/interactive/buttons/custom_outlined_button.dart';
export 'package:wordsmith_app/ui/styles/color_set.dart';
export 'package:wordsmith_app/ui/styles/components/layout/fit/scale_down.dart';
export 'package:wordsmith_app/ui/styles/components/layout/spacers/custom_spacer.dart';

// Default OS fonts (SF Pro, Roboto) will be used, i.e., font will not be specified.
// Material design takes care of font selection based on OS.
// Default OS icons (iOS, Android), i.e. Material Icons.adaptive will be used.

abstract class Styles {
  // CONSTANTS
  static const double kMinInteractiveDimension =
      48; // follows https://api.flutter.dev/flutter/material/kMinInteractiveDimension-constant.html
  static const double borderRadius = 20;
  static const double buttonHeight = 56;
  static const double buttonHeightLarge = 80;

  // 1. COMPONENTS
  // LAYOUT
  static const SpacerSet spacers = SpacerSet();
  // static const PaddingSet padding = PaddingSet();
  // static final Scaffolds scaffolds = Scaffolds();
  // static const ContainerSet containers = ContainerSet();
  // static const DividerSet dividers = DividerSet();
  static final RadiusSet radii = RadiusSet();
  // static const FitSet fit = FitSet();

  // INTERACTIVE
  static const ButtonSet buttons = ButtonSet();
  // static const FieldSet fields = FieldSet();

  // INFORMATIVE
  // static const IndicatorSet indicators = IndicatorSet();
  static const NotificationSet notifications = NotificationSet();

  /// 2. VISUALS
  // static final ShadowSet shadows = ShadowSet();
  static const TypographySet typography = TypographySet();
  static const Iconography iconography = Iconography();
  // static final Imagery imagery = Imagery();

  static const String placeholder =
      'Call class directly, this is just a placeholder for dev to see what styles are available.';
}
