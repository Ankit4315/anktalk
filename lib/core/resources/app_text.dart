import 'package:anktalk/core/resources/app_colors.dart';
import 'package:flutter/material.dart';

Widget appText({required String text, required double fontSize}) {
  return Text(
    text,
    style: TextStyle(
      color: AppColors.textColor,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
      wordSpacing: -2,
    ),
  );
}