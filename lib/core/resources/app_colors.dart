import 'package:flutter/material.dart';

class AppColors {
  static const blackColor = Colors.black;
  static const textColor = Color.fromRGBO(255, 255, 255, 1);
  static const lstColor = Color.fromRGBO(69, 28, 98, 0.7);
  static const areaColor = LinearGradient(
    colors: [
      Color.fromRGBO(42, 16, 63, 0.5),
      Color.fromRGBO(110, 42, 165, 0.5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const btnColor = LinearGradient(
    colors: [
      Color.fromRGBO(26, 16, 49, 0.75),
      Color.fromRGBO(77, 67, 156, 1),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const areaColor2 = LinearGradient(
    colors: [
      Color.fromRGBO(69, 28, 98, 0.5),
      Color.fromRGBO(141, 57, 200, 0.5),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const thpColor = LinearGradient(
    colors: [
      Color.fromRGBO(64, 4, 77, 1),
      Color.fromRGBO(54, 35, 95, 1),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
