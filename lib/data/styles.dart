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
      onBackground: AppColor.onBackground,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: AppColor.background,
  );

  static ThemeData light =
      ThemeData(brightness: Brightness.light, primaryColor: AppColor.primary);
}
