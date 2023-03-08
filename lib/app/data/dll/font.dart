import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Font {
  static regular({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
  }) {
    return GoogleFonts.courierPrime(
      color: color,
      letterSpacing: letterSpacing,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }
}
