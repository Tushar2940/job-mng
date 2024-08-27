import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyles {
  // Headline Styles
  static final TextStyle headline1 = GoogleFonts.inter(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final TextStyle headline2 = GoogleFonts.inter(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: Colors.black87,
  );

  static final TextStyle headline3 = GoogleFonts.inter(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    color: Colors.black54,
  );

  // Subtitle Styles
  static final TextStyle subtitle1 = GoogleFonts.inter(
    fontSize: 16.0,
    fontWeight: FontWeight.w500,
    color: Colors.black87,
  );

  static final TextStyle subtitle2 = GoogleFonts.inter(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.black54,
  );

  // Body Text Styles
  static final TextStyle bodyText1 = GoogleFonts.inter(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static final TextStyle bodyText2 = GoogleFonts.inter(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.black54,
  );

  // Button Text Style
  static final TextStyle button = GoogleFonts.inter(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );

  // Caption Style
  static final TextStyle caption = GoogleFonts.inter(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );

  // Overline Style
  static final TextStyle overline = GoogleFonts.inter(
    fontSize: 10.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
}
