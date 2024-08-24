import 'package:anktalk/core/background_animation/background_img_rotation.dart';
import 'package:anktalk/core/resources/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackGroundAnimation extends StatefulWidget {
  const BackGroundAnimation({super.key});

  @override
  State<BackGroundAnimation> createState() => _BackGroundAnimationState();
}

class _BackGroundAnimationState extends State<BackGroundAnimation> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final double topC = screenHeight * 0.960;

    final double widthC = screenWidth * 0.3;
    final double heightC = screenHeight * 0.05;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 0.048.sh,
            left: 0.046.sw,
            child: Row(
              children: [
                SizedBox(
                  width: 34.w,
                  height: 34.h,
                  child: Image.asset('assets/images/cir.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                SizedBox(
                    width: 120.w,
                    height: 31.h,
                    child: Center(child: appText(text: "AnkTalk", fontSize: 28))
                )
              ],
            ),
          ),

          const BackgroundImgRotation(seconds: 8, begin: 0, end: -360),

          Center(
            child: SizedBox(
              width: 448.w,
              height: 749.h,
              child: Image.asset(
                'assets/images/img_7.png',
              ),
            ),
          ),
          Positioned(
            top: topC,
            left: (screenWidth - widthC) / 2,
            child: SizedBox(
              width: widthC,
              height: heightC,
              child: const Center(
                child: Text(
                  '© Copyright 2024',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
