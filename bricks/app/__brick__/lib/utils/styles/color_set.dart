import 'package:flutter/material.dart';

/// ColorSet for Honeycomb's palette
///
/// Separated from styles so that its members can be static const for optimisation

abstract class ColorSet {
  const ColorSet();
  // COLORS
  // first FF is for opacity
  static const Color black = Color(0xFF000000);

  static const Color white = Color(0xFFFFFFFF);
  static const Color oysterBay = Color(0xFFE0F2F1);
  static const Color blueMunsell = Color(0xFF0892A5);
  static const Color darkCyan = Color(0xFF06908F);
  static const Color viridianGreen = Color(0xFF0CA4A5);
  static const Color persian = Color(0xFFCA3433);

  static const Color transparent = Color(0x00000000);
}
