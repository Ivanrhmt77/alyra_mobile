import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData dark() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.neutral1000,
      primaryColor: AppColors.primary500,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary500,
        onPrimary: AppColors.neutral1000,
        secondary: AppColors.secondary500,
        onSecondary: AppColors.neutral100,
        error: AppColors.error500,
        onError: AppColors.neutral100,
        surface: AppColors.neutral900,
        onSurface: AppColors.neutral300,
      ),
      useMaterial3: true,
    );
  }

  static ThemeData light() {
    return ThemeData(
      scaffoldBackgroundColor: AppColors.neutral100,
      primaryColor: AppColors.primary500,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primary500,
        onPrimary: AppColors.neutral100,
        secondary: AppColors.secondary500,
        onSecondary: AppColors.neutral1000,
        error: AppColors.error500,
        onError: AppColors.neutral100,
        surface: AppColors.neutral200,
        onSurface: AppColors.neutral800,
      ),
      useMaterial3: true,
    );
  }
}
