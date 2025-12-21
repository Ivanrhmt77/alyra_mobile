import 'package:alyra_mobile/core/themes/app_sizing.dart';
import 'package:flutter/material.dart';

class AppPadding {
  const AppPadding._();

  // ===== ALL =====
  static EdgeInsets get p2 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w2, vertical: AppSizing.h2);
  static EdgeInsets get p4 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w4, vertical: AppSizing.h4);
  static EdgeInsets get p8 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w8, vertical: AppSizing.h8);
  static EdgeInsets get p12 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w12, vertical: AppSizing.h12);
  static EdgeInsets get p16 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w16, vertical: AppSizing.h16);
  static EdgeInsets get p20 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w20, vertical: AppSizing.h20);
  static EdgeInsets get p24 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w24, vertical: AppSizing.h24);
  static EdgeInsets get p32 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w32, vertical: AppSizing.h32);
  static EdgeInsets get p40 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w40, vertical: AppSizing.h40);
  static EdgeInsets get p48 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w48, vertical: AppSizing.h48);
  static EdgeInsets get p56 =>
      EdgeInsets.symmetric(horizontal: AppSizing.w56, vertical: AppSizing.h56);

  // ===== HORIZONTAL =====
  static EdgeInsets get px2 => EdgeInsets.symmetric(horizontal: AppSizing.w2);
  static EdgeInsets get px4 => EdgeInsets.symmetric(horizontal: AppSizing.w4);
  static EdgeInsets get px8 => EdgeInsets.symmetric(horizontal: AppSizing.w8);
  static EdgeInsets get px12 => EdgeInsets.symmetric(horizontal: AppSizing.w12);
  static EdgeInsets get px16 => EdgeInsets.symmetric(horizontal: AppSizing.w16);
  static EdgeInsets get px20 => EdgeInsets.symmetric(horizontal: AppSizing.w20);
  static EdgeInsets get px24 => EdgeInsets.symmetric(horizontal: AppSizing.w24);
  static EdgeInsets get px32 => EdgeInsets.symmetric(horizontal: AppSizing.w32);
  static EdgeInsets get px40 => EdgeInsets.symmetric(horizontal: AppSizing.w40);
  static EdgeInsets get px48 => EdgeInsets.symmetric(horizontal: AppSizing.w48);
  static EdgeInsets get px56 => EdgeInsets.symmetric(horizontal: AppSizing.w56);

  // ===== VERTICAL =====
  static EdgeInsets get py2 => EdgeInsets.symmetric(vertical: AppSizing.h2);
  static EdgeInsets get py4 => EdgeInsets.symmetric(vertical: AppSizing.h4);
  static EdgeInsets get py8 => EdgeInsets.symmetric(vertical: AppSizing.h8);
  static EdgeInsets get py12 => EdgeInsets.symmetric(vertical: AppSizing.h12);
  static EdgeInsets get py16 => EdgeInsets.symmetric(vertical: AppSizing.h16);
  static EdgeInsets get py20 => EdgeInsets.symmetric(vertical: AppSizing.h20);
  static EdgeInsets get py24 => EdgeInsets.symmetric(vertical: AppSizing.h24);
  static EdgeInsets get py32 => EdgeInsets.symmetric(vertical: AppSizing.h32);
  static EdgeInsets get py40 => EdgeInsets.symmetric(vertical: AppSizing.h40);
  static EdgeInsets get py48 => EdgeInsets.symmetric(vertical: AppSizing.h48);
  static EdgeInsets get py56 => EdgeInsets.symmetric(vertical: AppSizing.h56);

  // ===== CUSTOM =====
  static EdgeInsets pxy({double horizontal = 0, double vertical = 0}) =>
      EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}
