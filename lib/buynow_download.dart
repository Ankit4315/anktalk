import 'package:anktalk/core/background_animation/back_ground_animation.dart';
import 'package:anktalk/core/navigation_menu.dart';
import 'package:anktalk/core/resources/app_colors.dart';
import 'package:anktalk/core/resources/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ByNow extends StatefulWidget {
  const ByNow({super.key});

  @override
  State<ByNow> createState() => _ByNowState();
}

class _ByNowState extends State<ByNow> {
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundAnimation(),
          Positioned(
            top: 0.107.sh,
            left: (1.sw - 0.358.sw) / 2,
            child: SizedBox(
              width: 0.358.sw,
              height: 0.064.sh,
              child: Center(
                child: appText(text: 'Buy Now', fontSize: 24),
              ),
            ),
          ),
          Positioned(
            top: 0.210.sh,
            left: (1.sw - 0.85.sw) / 2,
            child: SizedBox(
              width: 0.85.sw,
              height: 0.3.sh,
              child: Column(
                children: [
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        appText(text: 'Download 100 Names', fontSize: 16.sp),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(69, 28, 98, 0.8),
                              // Set the button color here
                              fixedSize: Size.fromWidth(0.342.sw)),
                          onPressed: () {
                            setState(() {
                              flag = true;
                            });
                          },
                          child: appText(text: '₹50/month', fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    height: 30,
                    child: Row(
                      children: [
                        appText(text: 'Download 200 Names', fontSize: 16),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(69, 28, 98, 0.8),
                              // Set the button color here
                              fixedSize: Size.fromWidth(0.342.sw)),
                          onPressed: () {
                            setState(() {
                              flag = true;
                            });
                          },
                          child: appText(text: '₹100/month', fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        appText(text: 'Download 300 Names', fontSize: 16),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(
                                69, 28, 98, 0.8), // Set the button color here
                            fixedSize: Size.fromWidth(0.342.sw),
                          ),
                          onPressed: () {
                            setState(() {
                              flag = true;
                            });
                          },
                          child: appText(text: '₹150/month', fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 25,
                    child: Row(
                      children: [
                        appText(text: 'Download 400 Names', fontSize: 16),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(69, 28, 98, 0.8),
                                fixedSize: Size.fromWidth(
                                    0.340.sw) // Set the button color here

                                ),
                            onPressed: () {
                              setState(() {
                                flag = true;
                              });
                            },
                            child: appText(text: '₹200/month', fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (flag)
            Center(
              child: Container(
                width: 229.w,
                height: 84.h,
                decoration: BoxDecoration(
                  gradient: AppColors.thpColor,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        appText(text: 'Thank You', fontSize: 22.sp),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        appText(text: 'for you Purchase', fontSize: 22.sp),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          const Menue()
        ],
      ),
    );
  }
}
