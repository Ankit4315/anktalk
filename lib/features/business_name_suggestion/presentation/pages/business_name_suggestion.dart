import 'package:anktalk/core/background_animation/back_ground_animation.dart';
import 'package:anktalk/core/elevated_button.dart';
import 'package:anktalk/core/resources/app_text.dart';
import 'package:anktalk/core/name_suggestion_list_and_download_button.dart';
import 'package:anktalk/core/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/custom_dropdown.dart';

class BusinessNameSuggestion extends StatefulWidget {
  const BusinessNameSuggestion({super.key});

  @override
  State<BusinessNameSuggestion> createState() => _NameState();
}

class _NameState extends State<BusinessNameSuggestion>
    with TickerProviderStateMixin {
  late AnimationController _continuousRotationController;
  List<String> alphabet = [];

  bool showSuggestedNames = false;

  void _toggleSuggestedNames() {
    setState(() {
      showSuggestedNames = !showSuggestedNames;
    });
  }

  final jobRoleCtrl1 = TextEditingController();
  final jobRoleCtrl2 = TextEditingController();
  final jobRoleCtrl3 = TextEditingController();
  final jobRoleCtrl4 = TextEditingController();
  final jobRoleCtrl5 = TextEditingController();

  @override
  void dispose() {
    // Dispose of the controllers to prevent memory leaks
    jobRoleCtrl1.dispose();
    jobRoleCtrl2.dispose();
    jobRoleCtrl3.dispose();
    jobRoleCtrl4.dispose();
    jobRoleCtrl5.dispose();
    _continuousRotationController.dispose();
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
                  child:
                      appText(text: 'Business Name Suggestion', fontSize: 24)),
            ),
          ),
          Positioned(
            top: 0.21.sh,
            left: (1.sw - 359.w) / 2,
            child: SizedBox(
              width: 359.w,
              height: 242.h,
              child: Column(
                children: [
                  Row(
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
                            jobRoleCtrl3,
                            'Sum',
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          buildDropdownColumn(
                            'Length of Name',
                            const ['1', '2', '3', '4', '5', '6', '7', '8', '9'],
                            jobRoleCtrl2,
                            'Length',
                          ),
                          const SizedBox(height: 25),
                          buildDropdownColumn(
                            'Types of Numerology',
                            const ['Chaldean', 'Pythagorean'],
                            jobRoleCtrl5,
                            'Numerology',
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 222.w,
                        height: 37.h,
                        child: appelevatedButton(text: 'Suggest Name', fontSize: 20, onPressed: _toggleSuggestedNames)
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (showSuggestedNames) const NameList(),
          if (showSuggestedNames) const Btn(),
          const Menue(),
        ],
      ),
    );
  }
}
