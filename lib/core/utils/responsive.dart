import 'package:flutter/material.dart';

class Responsive {
  const Responsive._();

  static late double _scaleWidth;
  static late double _scaleHeight;

  static void init(BuildContext context) {
    final size = MediaQuery.of(context).size;
    _scaleWidth = size.width / 412;
    _scaleHeight = size.height / 917;
  }

  static double w(double value) => value * _scaleWidth;
  static double h(double value) => value * _scaleHeight;
  static double sp(double value) => value * (_scaleWidth + _scaleHeight) / 2;
}
