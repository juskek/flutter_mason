import 'package:wordsmith_app/utils/index.dart';

class PaddingSet {
  const PaddingSet();

  /// For screen padding on the left and right
  /// Do not use in place of safe area for top and bottom
  final double screenPaddingValue = 15;
  final EdgeInsetsGeometry horizontalScreenPadding =
      const EdgeInsets.fromLTRB(15, 0, 15, 0);

  final double keyboardPadding =
      20; // padding between keyboard and bottom-most widget
  // containers
  final EdgeInsetsGeometry shadowcontainer = const EdgeInsets.all(10);

  // buttons
  final EdgeInsetsGeometry buttonLeftIconPadding =
      const EdgeInsets.fromLTRB(16, 0, 0, 0);
  final EdgeInsetsGeometry buttonRightIconPadding =
      const EdgeInsets.fromLTRB(0, 0, 16, 0);

  // dropdown
  final EdgeInsetsGeometry dropdownItemPadding =
      const EdgeInsets.fromLTRB(0, 5, 0, 5);

  // scrollbar
  final double scrollbarPaddingValue = 15;

  final EdgeInsetsGeometry scrollbarRightPadding =
      const EdgeInsets.fromLTRB(0, 0, 15, 0);
  final EdgeInsetsGeometry scrollbarLeftRightPadding =
      const EdgeInsets.fromLTRB(15, 0, 15, 0);

  @Deprecated('padding added by default in CustomCloseButton')
  final EdgeInsetsGeometry closeCardIconPadding =
      const EdgeInsets.fromLTRB(0, 15, 15, 0);
  final EdgeInsetsGeometry dialogContentPadding =
      const EdgeInsets.fromLTRB(40, 5, 40, 10);
  final EdgeInsetsGeometry dialogHoneycombPadding =
      const EdgeInsets.fromLTRB(0, 0, 0, 25);

  final EdgeInsetsGeometry imagePadding = const EdgeInsets.all(20);

  final EdgeInsetsGeometry formFieldPadding = const EdgeInsets.all(30);

  final EdgeInsetsGeometry hivePassPadding = const EdgeInsets.all(10);

  final EdgeInsetsGeometry siteFinderIconPadding = const EdgeInsets.all(10);

  // cards
  final EdgeInsetsGeometry cardActionPadding =
      const EdgeInsets.fromLTRB(0, 0, 10, 10);

  final EdgeInsetsGeometry addCardDottedPadding = const EdgeInsets.all(5);

  final EdgeInsetsGeometry siteCardButtonLeftIconPadding =
      const EdgeInsets.fromLTRB(0, 20, 10, 20);
  final EdgeInsetsGeometry siteCardButtonRightIconPadding =
      const EdgeInsets.fromLTRB(10, 20, 0, 20);
  final EdgeInsetsGeometry siteCardButtonPadding =
      const EdgeInsets.only(left: 10, right: 10);
  final EdgeInsetsGeometry chargeModeInfoPadding =
      const EdgeInsets.fromLTRB(20, 10, 20, 10);

  final EdgeInsetsGeometry siteCardTextPadding =
      const EdgeInsets.fromLTRB(40, 25, 40, 20);
  final EdgeInsetsGeometry accessConditionsTextPadding =
      const EdgeInsets.fromLTRB(25, 10, 25, 30);

  // padding for site marker to center with its content
  final EdgeInsetsGeometry siteMarkerPaddingToCenter =
      const EdgeInsetsDirectional.fromSTEB(0, 10.5, 0, 0);
  final EdgeInsetsGeometry otp = const EdgeInsets.only(left: 5, right: 5);
}
