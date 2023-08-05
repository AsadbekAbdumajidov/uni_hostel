import 'package:flutter/material.dart';
import 'package:UniHostel/core/constants/constants.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }
}

double he(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight!;
  return (inputHeight / maxHeight) * screenHeight;
}

double wi(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth!;
  return (inputWidth / 1600.0) * screenWidth;
}
