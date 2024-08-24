import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/resources/app_colors.dart';

Widget textField({
  required String text,
}) {
  return SizedBox(
    width: 327.w,
    height: 71.h,
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
        gradient: AppColors.areaColor,
      ),
      child: TextField(
        style: const TextStyle(color: AppColors.textColor, fontSize: 22),
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          labelText: text,
          labelStyle: const TextStyle(color: AppColors.textColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0.r),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 25.0),
        ),
      ),
    ),
  );
}
