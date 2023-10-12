import 'package:flutter/material.dart';

class AppColor {
  static const Color primary = Colors.blue;
  static const Color secondary = Colors.blueAccent;

  static final Color background = Colors.grey.shade900;

  static const Color error = Colors.red;
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
      onPrimary: AppColor.primary,
      secondary: AppColor.secondary,
      onSecondary: AppColor.secondary,
      error: AppColor.error,
      onError: AppColor.error,
      background: AppColor.background,
      onBackground: Colors.black87,
      surface: Colors.white,
      onSurface: Colors.white,
    ),
    scaffoldBackgroundColor: AppColor.background,
  );

  static ThemeData light =
      ThemeData(brightness: Brightness.light, primaryColor: AppColor.primary);
}
