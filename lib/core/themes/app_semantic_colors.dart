import 'package:alyra_mobile/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

@immutable
class AppSemanticColors {
  final Color background;
  final Color surface;
  final Color divider;

  final Color textPrimary;
  final Color textSecondary;
  final Color textDisabled;

  const AppSemanticColors({
    required this.background,
    required this.surface,
    required this.divider,
    required this.textPrimary,
    required this.textSecondary,
    required this.textDisabled,
  });

  factory AppSemanticColors.dark() {
    return const AppSemanticColors(
      background: AppColors.neutral1000,
      surface: AppColors.neutral900,
      divider: AppColors.neutral800,
      textPrimary: AppColors.neutral100,
      textSecondary: AppColors.neutral300,
      textDisabled: AppColors.neutral500,
    );
  }

  factory AppSemanticColors.light() {
    return const AppSemanticColors(
      background: AppColors.neutral100,
      surface: AppColors.neutral200,
      divider: AppColors.neutral300,
      textPrimary: AppColors.neutral1000,
      textSecondary: AppColors.neutral800,
      textDisabled: AppColors.neutral500,
    );
  }
}
