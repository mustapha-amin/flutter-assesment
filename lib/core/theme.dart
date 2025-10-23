import 'package:flutter/material.dart';

class AppTheme {
  static const String _fontFamily = 'PublicSans';

  static TextTheme get textTheme {
    return const TextTheme(
      displayLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: 32,
        letterSpacing: -0.5,
      ),
      displayMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 28,
        letterSpacing: -0.5,
      ),
      displaySmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 24,
        letterSpacing: 0,
      ),

      headlineLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 22,
        letterSpacing: 0,
      ),
      headlineMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 20,
        letterSpacing: 0,
      ),
      headlineSmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 18,
        letterSpacing: 0,
      ),

      titleLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: 16,
        letterSpacing: 0,
      ),
      titleMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      ),
      titleSmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.1,
      ),

      bodyLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        letterSpacing: 0.5,
      ),
      bodyMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        letterSpacing: 0.25,
      ),
      bodySmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: 12,
        letterSpacing: 0.4,
      ),

      labelLarge: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 14,
        letterSpacing: 0.1,
      ),
      labelMedium: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        letterSpacing: 0.5,
      ),
      labelSmall: TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 10,
        letterSpacing: 0.5,
      ),
    );
  }

  static ThemeData get lightTheme {
    return ThemeData(fontFamily: _fontFamily, textTheme: textTheme);
  }

}
