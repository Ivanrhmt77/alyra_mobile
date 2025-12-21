import 'package:alyra_mobile/core/extensions/semantic_colors_extensions.dart';
import 'package:flutter/material.dart';
import '../utils/responsive.dart';

class AppTextStyles {
  const AppTextStyles._();

  // ===== HEADLINES =====
  static TextStyle h1(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(58),
    fontWeight: FontWeight.bold,
    height: 87 / 58,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h2(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(48),
    fontWeight: FontWeight.bold,
    height: 72 / 48,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h3(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(40),
    fontWeight: FontWeight.bold,
    height: 60 / 40,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h4(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(34),
    fontWeight: FontWeight.bold,
    height: 51 / 34,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h5(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(28),
    fontWeight: FontWeight.bold,
    height: 42 / 28,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h6(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(24),
    fontWeight: FontWeight.bold,
    height: 36 / 24,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle h7(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(20),
    fontWeight: FontWeight.bold,
    height: 30 / 20,
    color: color ?? context.semantic.textPrimary,
  );

  // ===== BODY =====

  static TextStyle body1(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(14),
    fontWeight: FontWeight.normal,
    height: 21 / 14,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle body2(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(12),
    fontWeight: FontWeight.normal,
    height: 18 / 12,
    color: color ?? context.semantic.textPrimary,
  );

  static TextStyle body3(BuildContext context, {Color? color}) => TextStyle(
    fontSize: Responsive.sp(10),
    fontWeight: FontWeight.normal,
    height: 15 / 10,
    color: color ?? context.semantic.textPrimary,
  );
}
