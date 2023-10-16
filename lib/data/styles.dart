import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Colors.blue;
  static const Color onPrimary = Colors.blueAccent;
  static final Color secondary = Colors.blue.shade500;
  static final Color onSecondary = Colors.blueAccent.shade400;

  static final Color background = Colors.grey.shade900;
  static final Color onBackground = Colors.grey.shade600;

  static const Color error = Colors.red;
  static final Color onError = Colors.red.shade500;
}

class Durations {
  static const Duration animate = Duration(milliseconds: 500);
  static const Duration errorSnackBar = Duration(seconds: 3);
  static const Duration pageViewer = Duration(milliseconds: 500);
}

class ThemeScheme {
  static ThemeData dark = ThemeData(
    primaryColor: AppColor.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: AppColor.primary,
      onPrimary: AppColor.onPrimary,
      secondary: AppColor.secondary,
      onSecondary: AppColor.onSecondary,
      error: AppColor.error,
      onError: AppColor.onError,
      background: AppColor.background,
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
    primaryColor: AppColor.primary,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: AppColor.primary,
      onPrimary: AppColor.onPrimary,
      secondary: AppColor.secondary,
      onSecondary: AppColor.onSecondary,
      error: AppColor.error,
      onError: AppColor.onError,
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
