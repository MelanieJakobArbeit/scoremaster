// ignore_for_file: avoid_redundant_argument_values

import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData dark = ThemeData.from(
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primary,
      onPrimary: AppColors.onPrimary,
      secondary: AppColors.secondary,
      onSecondary: AppColors.onSecondary,
      background: AppColors.background,
      onBackground: AppColors.onBackground,
      surface: AppColors.surface,
      onSurface: AppColors.onSurface,
      error: AppColors.error,
      onError: AppColors.onError,
    ),
  );
}

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF27564A);
  static const Color onPrimary = Colors.white;

  static const Color secondary = Color(0xFF002B1D);
  static const Color onSecondary = Colors.white;

  static const Color background = secondary;
  static const Color onBackground = primary;

  static const Color surface = primary;
  static const Color onSurface = Colors.white;

  static const Color error = Colors.red;
  static const Color onError = Colors.white;

  static const Color accent = Color(0xFF00FFAC);
  static const Color textSpecialColor = accent;
  static const Color textColor = Colors.white;
}
