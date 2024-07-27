import 'package:flutter/cupertino.dart';

class AppSize {
  static const double _baseWidth = 375;
  static const double _baseHeight = 812;

  static double widthScale(BuildContext context, double size) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return size * (screenWidth / _baseWidth);
  }

  static double heightScale(BuildContext context, double size) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return size * (screenHeight / _baseHeight);
  }

  static double textScale(BuildContext context, double size) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return size * (screenWidth / _baseWidth);
  }
}

