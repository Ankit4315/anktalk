import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:anktalk/core/resources/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildDropdownColumn(
    String title,
    List<String> items,
    TextEditingController controller,
    String hintText,
    ) {

  return SizedBox(
    width: 166.w,
    height: 65.h,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: appText(text: title, fontSize: 14.sp),
        ),
        SizedBox(height: 10.h),
        SizedBox(
          width: 166.w,
          height: 35.h,
          child: CustomDropdown(
            listItemStyle: TextStyle(fontSize: 12.sp,color: Colors.black),
            fillColor: const Color.fromRGBO(69, 28, 98, 15),
            hintStyle: const TextStyle(fontSize: 14),
            selectedStyle: const TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              fontSize: 14,
            ),
            borderRadius: BorderRadius.circular(17),
            borderSide: BorderSide(color: Colors.purple.shade700),
            excludeSelected: false,
            hintText: hintText,
            items: items,
            controller: controller,
          ),
        ),
      ],
    ),

  );
}
