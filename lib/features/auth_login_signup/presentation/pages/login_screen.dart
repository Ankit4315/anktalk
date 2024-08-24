import 'package:anktalk/core/resources/app_text.dart';
import 'package:anktalk/core/background_animation/background_img_rotation.dart';
import 'package:anktalk/core/elevated_button.dart';
import 'package:anktalk/features/auth_login_signup/presentation/widgets/text_field.dart';
import 'package:anktalk/features/human_name_suggestion/presentation/pages/human_name_suggestion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/back.jpeg'),
              ),
            ),
          ),
          const BackgroundImgRotation(seconds: 8, begin: 0, end: -360),
          Positioned(
            top: 0.031.sh,
            left: (1.sw - 272.w) / 2,
            child: Image.asset('assets/images/img_3.png',
              width: 272.w,
              height: 65.h,
            ),
          ),
          Center(child: Image.asset('assets/images/img_4.png')),
          Positioned(
            top: 0.216.sh,
            child: SizedBox(
              width: 1.sw,
              child: Column(
                children: [
                  appText(text: 'Login', fontSize: 28),
                  SizedBox(height: 75.h),
                  textField(text: "Username"),
                  SizedBox(height: 20.h),
                  textField(text: "Password"),
                  SizedBox(height: 5.h),
                  Padding(
                    padding: const EdgeInsets.only(left: 200.0),
                    child: appText(text: 'Forgot Password?', fontSize: 12.sp),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 108.w,
                    height: 38.h,
                    child: appelevatedButton(
                      text: "Sign in",
                      fontSize: 16.sp,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HumanNameSuggestion(),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 10.h),
                  appText(text: 'Or sign up using', fontSize: 12.sp),
                  SizedBox(height: 10.h),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Icon(Icons.facebook_rounded, color: Colors.white, size: 35),
                      SizedBox(width: 2),
                      Icon(Icons.mail_rounded, color: Colors.white, size: 35),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.98.sh,
            left: (1.sw - 122.w) / 2,
            child: SizedBox(
                width: 122.w,
                height: 20.h,
                child: Center(child: appText(text: '© Copyright 2024', fontSize: 10))),
          ),
        ],
      ),
    );
  }
}
