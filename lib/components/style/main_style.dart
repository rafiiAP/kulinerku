import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../data/contant/color.dart';
// import 'package:google_fonts/google_fonts.dart';

class MainStyle {
  static final light = ThemeData(
    scaffoldBackgroundColor: ColorConfig.white,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light().copyWith(
      primary: ColorConfig.mainColor,
      onPrimary: ColorConfig.white,
      background: ColorConfig.mainColor,
      secondary: ColorConfig.mainColor,
      onBackground: ColorConfig.mainColor,
    ),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      backgroundColor: ColorConfig.transparent,
      foregroundColor: ColorConfig.mainColor,
    ),
    primaryColor: ColorConfig.mainColor,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.openSans(
        fontSize: 95,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      displayMedium: GoogleFonts.openSans(
        fontSize: 59,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.openSans(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.openSans(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.openSans(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(),
    textTheme: TextTheme(
      displayLarge: GoogleFonts.openSans(
        fontSize: 95,
        fontWeight: FontWeight.w300,
        letterSpacing: -1.5,
      ),
      displayMedium: GoogleFonts.openSans(
        fontSize: 59,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      displaySmall: GoogleFonts.openSans(
        fontSize: 48,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: GoogleFonts.openSans(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headlineSmall: GoogleFonts.openSans(
        fontSize: 24,
        fontWeight: FontWeight.w400,
      ),
      titleLarge: GoogleFonts.openSans(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.openSans(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.openSans(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.openSans(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.openSans(
          fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    ),
  );
}

//input text rekening

// SetoranGetx setoranGetx = Get.find();
