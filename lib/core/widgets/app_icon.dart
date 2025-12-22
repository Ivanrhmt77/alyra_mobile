import 'package:alyra_mobile/core/extensions/semantic_colors_extensions.dart';
import 'package:alyra_mobile/core/themes/app_sizing.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final double? fill;
  final Color? color;
  final double? size;

  const AppIcon(this.icon, {super.key, this.fill = 0, this.color, this.size});

  @override
  Widget build(BuildContext context) {
    return Icon(
      IconData(
        icon.codePoint,
        fontFamily: 'MaterialSymbolsRounded',
        fontPackage: 'material_symbols_icons',
      ),
      fill: fill,
      size: size ?? AppSizing.w48,
      weight: 200,
      grade: 0,
      opticalSize: 24,
      color: color ?? context.semantic.textPrimary,
    );
  }
}
