import 'package:alyra_mobile/core/extensions/semantic_colors_extensions.dart';
import 'package:alyra_mobile/core/themes/app_sizing.dart';
import 'package:flutter/material.dart';

class AppIcon extends StatelessWidget {
  final IconData icon;
  final bool active;
  final double? size;
  final Color? color;

  const AppIcon(
    this.icon, {
    super.key,
    this.active = false,
    this.size,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      IconData(
        icon.codePoint,
        fontFamily: 'MaterialSymbolsRounded',
        fontPackage: 'material_symbols_icons',
      ),
      fill: active ? 1 : 0,
      size: size ?? AppSizing.w24,
      weight: 200,
      grade: 0,
      opticalSize: 24,
      color: color ?? context.semantic.textPrimary,
    );
  }
}
