import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData mediaQuery;
  static late double srnWidth;
  static late double srnHeight;

  void init(BuildContext context) {
    mediaQuery = MediaQuery.of(context);
    srnWidth = mediaQuery.size.width;
    srnHeight = mediaQuery.size.height;
  }
}

double getSrnWidth(double adjust) {
  return (adjust / 812.0) * SizeConfig.srnWidth;
}

double getOrgSrnWidth() {
  return SizeConfig.srnWidth;
}

double getSrnHeight(double adjust) {
  return (adjust / 375.0) * SizeConfig.srnHeight;
}
