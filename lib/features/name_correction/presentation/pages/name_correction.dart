import 'package:anktalk/core/background_animation/back_ground_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/custom_dropdown.dart';
import '../../../../core/elevated_button.dart';
import '../../../../core/name_suggestion_list_and_download_button.dart';
import '../../../../core/navigation_menu.dart';
import '../../../../core/resources/app_text.dart';

class NameCorrection extends StatefulWidget {
  const NameCorrection({super.key});

  @override
  State<NameCorrection> createState() => _NameCorrectionState();
}

class _NameCorrectionState extends State<NameCorrection> {
  List<String> alphabet = [];

  bool showSuggestedNames = false;

  void _toggleSuggestedNames() {
    setState(() {
      showSuggestedNames = !showSuggestedNames;
    });
  }

  final jobRoleCtrl1 = TextEditingController();

  final jobRoleCtrl2 = TextEditingController();


  @override
  void dispose() {
    // Dispose of the controllers to prevent memory leaks
    jobRoleCtrl1.dispose();
    jobRoleCtrl2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackGroundAnimation(),
          Positioned(
            top: 0.107.sh,
            left: (1.sw - 358.w) / 2,
            child: SizedBox(
              width: 358.w,
              height: 64.h,
              child: Center(
                child: appText(text: 'Lo Shu Grid Chart', fontSize: 24),
              ),
            ),
          ),
          Positioned(
            top: 0.21.sh,
            left: (1.sw - 0.82.sw) / 2,
            child: SizedBox(
              width: 0.82.sw,
              height: 0.4.sh,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      buildDropdownColumn(
                        'Starting Alphabet',
                        const [
                          'A',
                          'B',
                          'C',
                          'D',
                          'E',
                          'F',
                          'G',
                          'H',
                          'I',
                          'J',
                          'K',
                          'L',
                          'M',
                          'N',
                          'O',
                          'P',
                          'Q',
                          'R',
                          'S',
                          'T',
                          'U',
                          'V',
                          'W',
                          'X',
                          'Y',
                          'Z'
                        ],
                        jobRoleCtrl1,
                        'Alphabet',
                      ),
                      const SizedBox(height: 25),
                      buildDropdownColumn(
                        'Sum of Name',
                        const ['1', '2', '3', '4', '5', '6', '7', '8', '9'],
                        jobRoleCtrl2,
                        'Sum',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0.509.sh,
            left: (1.sw - 222.w) / 2,
            child: SizedBox(
                width: 222.w,
                height: 37.h,
                child: appelevatedButton(
                    text: 'Suggest Name',
                    fontSize: 20,
                    onPressed: _toggleSuggestedNames)),
          ),
          if (showSuggestedNames) const NameList(),
          if (showSuggestedNames) const Btn(),
          const Menue(),
        ],
      ),
    );
  }
}
