import 'package:alyra_mobile/core/themes/app_colors.dart';
import 'package:alyra_mobile/core/themes/app_semantic_colors.dart';
import 'package:alyra_mobile/core/themes/app_semantic_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData dark() {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.neutral1000,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary500,
        secondary: AppColors.secondary500,
        error: AppColors.error500,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.neutral1000,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      extensions: [AppSemanticTheme(AppSemanticColors.dark())],
    );
  }

  static ThemeData light() {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.neutral100,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primary500,
        secondary: AppColors.secondary500,
        error: AppColors.error500,
      ),

      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.neutral100,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

      extensions: [AppSemanticTheme(AppSemanticColors.light())],
    );
  }
}
