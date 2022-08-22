import 'package:wordsmith_app/utils/index.dart';

class RadiusSet {
  RadiusSet._({
    required this.borderRadii,
    required this.radius,
    required this.borderRadius,
    required this.borderRadiusNone,
    required this.borderRadiusBottom,
    required this.roundedRectangleBorder,
    required this.bottomContainer,
  });

  /// Factory to generate instance of RadiusSet for Styles
  ///
  /// Cannot be instantiated using generative constructor since
  /// instance members depend on each other consecutively, and
  /// cannot be accessed within the initializer list.
  factory RadiusSet() {
    double borderRadii = Styles.borderRadius;
    Radius radius = Radius.circular(borderRadii);
    BorderRadius borderRadius = BorderRadius.all(radius);
    BorderRadius borderRadiusNone = const BorderRadius.all(Radius.zero);
    BorderRadius borderRadiusBottom = BorderRadius.only(
      bottomLeft: radius,
      bottomRight: radius,
    );
    RoundedRectangleBorder roundedRectangleBorder =
        RoundedRectangleBorder(borderRadius: borderRadius);
    BoxDecoration bottomContainer = BoxDecoration(
        color: ColorSet.black,
        borderRadius: BorderRadius.only(
          topLeft: radius,
          topRight: radius,
        ));
    return RadiusSet._(
      borderRadii: borderRadii,
      radius: radius,
      borderRadius: borderRadius,
      borderRadiusNone: borderRadiusNone,
      borderRadiusBottom: borderRadiusBottom,
      roundedRectangleBorder: roundedRectangleBorder,
      bottomContainer: bottomContainer,
    );
  }
  final double borderRadii;

  final Radius radius;

  final BorderRadius borderRadius;
  final BorderRadius borderRadiusNone;
  final BorderRadius borderRadiusBottom;
  final RoundedRectangleBorder roundedRectangleBorder;

  final BoxDecoration bottomContainer;
}
