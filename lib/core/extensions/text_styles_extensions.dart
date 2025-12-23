import 'package:alyra_mobile/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

extension TextStylesExtensions on BuildContext {
  // ===== HEADINGS =====
  TextStyle h1({Color? color}) => AppTextStyles.h1(this, color: color);
  TextStyle h2({Color? color}) => AppTextStyles.h2(this, color: color);
  TextStyle h3({Color? color}) => AppTextStyles.h3(this, color: color);
  TextStyle h4({Color? color}) => AppTextStyles.h4(this, color: color);
  TextStyle h5({Color? color}) => AppTextStyles.h5(this, color: color);
  TextStyle h6({Color? color}) => AppTextStyles.h6(this, color: color);
  TextStyle h7({Color? color}) => AppTextStyles.h7(this, color: color);

  // ===== BODY =====
  TextStyle body1({Color? color}) => AppTextStyles.body1(this, color: color);
  TextStyle body2({Color? color}) => AppTextStyles.body2(this, color: color);
  TextStyle body3({Color? color}) => AppTextStyles.body3(this, color: color);
}
