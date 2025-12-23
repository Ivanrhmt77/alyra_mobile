import 'package:alyra_mobile/core/themes/app_semantic_colors.dart';
import 'package:flutter/material.dart';

class AppSemanticTheme extends ThemeExtension<AppSemanticTheme> {
  final AppSemanticColors colors;

  const AppSemanticTheme(this.colors);

  @override
  ThemeExtension<AppSemanticTheme> copyWith({AppSemanticColors? colors}) {
    return AppSemanticTheme(colors ?? this.colors);
  }

  @override
  ThemeExtension<AppSemanticTheme> lerp(
    ThemeExtension<AppSemanticTheme>? other,
    double t,
  ) {
    return this;
  }
}
