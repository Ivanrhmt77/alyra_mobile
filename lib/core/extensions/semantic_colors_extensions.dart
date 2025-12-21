import 'package:alyra_mobile/core/themes/app_semantic_colors.dart';
import 'package:alyra_mobile/core/themes/app_semantic_theme.dart';
import 'package:flutter/material.dart';

extension SemanticColorsExtensions on BuildContext {
  AppSemanticColors get semantic {
    final semanticTheme = Theme.of(this).extension<AppSemanticTheme>();
    assert(
      semanticTheme != null,
      'AppSemanticTheme is not registered in ThemeData',
    );
    return semanticTheme!.colors;
  }
}
