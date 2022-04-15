import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData? _mediaQueryData;
  static double? screenWidth;
  static double? screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData!.size.width;
    screenHeight = _mediaQueryData!.size.height;
    orientation = _mediaQueryData!.orientation;
  }

  double getProportionWidth(double inputWidth) {
    double screenWidth = SizeConfig.screenWidth!;
    return (inputWidth / 375) * screenWidth;
  }

  double getProportionHeight(double inputHeight) {
    double screenHeight = SizeConfig.screenHeight!;
    return (inputHeight / 812) * screenHeight;
  }
}
