import 'package:flutter/material.dart';

class ColorSchemes {
  static const Color primary = Colors.blue;
  static const Color onPrimary = Colors.blueAccent;
  static final Color secondary = Colors.blue.shade500;
  static final Color onSecondary = Colors.blueAccent.shade400;

  static final Color background = Colors.grey.shade900;
  static final Color onBackground = Colors.grey.shade600;

  static const Color success = Colors.green;
  static final Color onSuccess = Colors.green.shade500;

  static const Color error = Colors.red;
  static final Color onError = Colors.red.shade500;
}

class DurationSchemes {
  static const Duration animate = Duration(milliseconds: 500);
  static const Duration errorSnackBar = Duration(seconds: 3);
  static const Duration pageViewer = Duration(milliseconds: 500);
}

class ThemeSchemes {
  static ThemeData dark = ThemeData(
    primaryColor: ColorSchemes.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: ColorSchemes.primary,
      onPrimary: ColorSchemes.onPrimary,
      secondary: ColorSchemes.secondary,
      onSecondary: ColorSchemes.onSecondary,
      error: ColorSchemes.error,
      onError: ColorSchemes.onError,
      background: ColorSchemes.background,
      onBackground: Colors.grey.shade600,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.grey.shade900,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blueAccent,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: Colors.grey,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    ),
  );

  static ThemeData light = ThemeData(
    primaryColor: ColorSchemes.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: ColorSchemes.primary,
      onPrimary: ColorSchemes.onPrimary,
      secondary: ColorSchemes.secondary,
      onSecondary: ColorSchemes.onSecondary,
      error: ColorSchemes.error,
      onError: ColorSchemes.onError,
      background: Colors.white,
      onBackground: Colors.white,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.blueAccent,
        backgroundColor: Colors.blue,
        disabledBackgroundColor: Colors.grey,
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32.0),
        ),
      ),
    ),
  );
}
