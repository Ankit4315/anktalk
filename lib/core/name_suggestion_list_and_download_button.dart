import 'package:anktalk/core/elevated_button.dart';
import 'package:anktalk/core/resources/app_colors.dart';
import 'package:anktalk/core/resources/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../buynow_download.dart';

class NameList extends StatelessWidget{
  const NameList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Positioned(
      top: 0.574.sh,
      left: (1.sw - 353.w) / 2,
      child: Container(
        width: 353.w,
        height: 272.h,
        decoration: BoxDecoration(
          color: AppColors.lstColor,
          borderRadius: BorderRadius.circular(26),
        ),
        child: ListView(
          padding: const EdgeInsets.all(0.2),
          children: List.generate(
            5, // Adjust the number of items as needed
                (index) => ListTile(
              title: Center(
                child: appText(text: 'Abcfv', fontSize: 22)
              ),
            ),
          ),
        ),
      ),
    );
  }

}

class Btn extends StatelessWidget{
  const Btn({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0.900.sh,
      left: (1.sw - 179.w) / 2,
      child: SizedBox(
        width: 179.w,
        height: 32.h,
        child: appelevatedButton(text: 'Download', fontSize: 20, onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ByNow(),
            ),
          );
        },)
      ),
    );
  }

}