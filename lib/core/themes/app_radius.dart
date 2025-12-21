import 'package:alyra_mobile/core/themes/app_sizing.dart';
import 'package:flutter/material.dart';

class AppRadius {
  const AppRadius._();

  static BorderRadius get r8 => BorderRadius.circular(AppSizing.w8);
  static BorderRadius get r16 => BorderRadius.circular(AppSizing.w16);
  static BorderRadius get r24 => BorderRadius.circular(AppSizing.w24);
  static BorderRadius get r32 => BorderRadius.circular(AppSizing.w32);
  static BorderRadius get r40 => BorderRadius.circular(AppSizing.w40);
  static BorderRadius get r48 => BorderRadius.circular(AppSizing.w48);
  static BorderRadius get r64 => BorderRadius.circular(AppSizing.w64);

  static BorderRadius get rNone => BorderRadius.circular(0);
  static BorderRadius get rFull => BorderRadius.circular(999);
}
