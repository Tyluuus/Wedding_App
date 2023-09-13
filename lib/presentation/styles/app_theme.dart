import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static AppTheme initialize() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      systemNavigationBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
    ));

    return AppTheme();
  }

  get main => ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent.withOpacity(0.1)),
      brightness: Brightness.light,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Color(0xffe9eff6),
      ),
      primaryColor: Colors.orangeAccent.withOpacity(0.1),
      highlightColor: Colors.purpleAccent.withOpacity(0.5),
      shadowColor: Colors.black,
      focusColor: Colors.white,
      dividerColor: Colors.grey,
      primaryTextTheme: TextTheme(
        headlineMedium: GoogleFonts.alexBrush(
          fontSize: 42,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: GoogleFonts.alexBrush(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
        titleLarge: GoogleFonts.alexBrush(
          fontSize: 36,
        ),
        titleMedium: GoogleFonts.alexBrush(
          fontSize: 32,
          fontWeight: FontWeight.w400,
        ),
        titleSmall: GoogleFonts.alexBrush(
          fontSize: 22,
          fontWeight: FontWeight.w400,
        ),
        bodyLarge: GoogleFonts.signika(
          fontSize: 28,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: GoogleFonts.signika(
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodySmall: GoogleFonts.signika(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: Colors.white,
        ),
        labelMedium: const TextStyle(
          color: Colors.black,
        ),
        labelSmall: const TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontWeight: FontWeight.w500,
        ),
      ),
      buttonTheme: ButtonThemeData(
        height: 40.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
      ));
}
