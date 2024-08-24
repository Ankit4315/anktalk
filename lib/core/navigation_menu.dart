import 'package:anktalk/core/resources/app_text.dart';
import 'package:anktalk/features/human_name_suggestion/presentation/pages/human_name_suggestion.dart';
import 'package:anktalk/features/low_shu_grid_chart/presentation/pages/low_shu_grid_chart.dart';
import 'package:anktalk/features/name_correction/presentation/pages/name_correction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../features/business_name_suggestion/presentation/pages/business_name_suggestion.dart';

class Menue extends StatefulWidget {
  const Menue({super.key});

  @override
  State<Menue> createState() => _MenueState();
}

class _MenueState extends State<Menue> with TickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _hum = 'Human Name\n  Suggestion';
          _bus = 'Business Name\n   Suggestion';
          _namecrac = 'Name Correction';
          _lochart = 'Lo Shu Grid Chart';
        });
      } else if (status == AnimationStatus.reverse) {
        setState(() {
          _hum = '';
          _bus = '';
          _namecrac = '';
          _lochart = '';
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var _width = 70.0;
  final _height = 371.0;
  var _padding = const EdgeInsets.only(top: 0.0, right: 0.0);
  var _border = const BorderRadius.only(bottomLeft: Radius.circular(0.0));
  var _sizedBoxHeight = 0.0;
  bool flag = true;

  var _hum = '';
  var _bus = '';
  var _namecrac = '';
  var _lochart = '';

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        top: 0,
        right: -70,
        child: AnimatedContainer(
          width: _width,
          height: _height,
          padding: _padding,
          duration: const Duration(milliseconds: 200),
          decoration: BoxDecoration(
            borderRadius: _border,
            color: Colors.purple.shade700,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                child: appText(text: _hum, fontSize: 16),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HumanNameSuggestion(),
                    ),
                  );
                },
              ),
              SizedBox(height: _sizedBoxHeight),
              GestureDetector(
                child: appText(text: _bus, fontSize: 16),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BusinessNameSuggestion(),
                    ),
                  );
                },
              ),
              SizedBox(height: _sizedBoxHeight),
              GestureDetector(
                child: appText(text: _namecrac, fontSize: 16),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NameCorrection(),
                    ),
                  );
                },
              ),
              SizedBox(height: _sizedBoxHeight),
              GestureDetector(
                child: appText(text: _lochart, fontSize: 16),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoChart(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      Positioned(
        top: 38.h,
        right: 30.w,
        child: IconButton(
          iconSize: 45,
          icon: AnimatedIcon(
            icon: AnimatedIcons.menu_close,
            progress: _controller,
            color: Colors.white,
          ),
          onPressed: () {
            setState(
              () {
                if (_controller.isCompleted) {
                  _controller.reverse();
                } else {
                  _controller.forward();
                }
                if (flag) {
                  _width = 274.0;
                  _padding = const EdgeInsets.only(top: 100, right: 70);
                  _border =
                      const BorderRadius.only(bottomLeft: Radius.circular(30));
                  _sizedBoxHeight = 30.0;
                  flag = false;
                } else {
                  _width = 70.0;
                  _padding = const EdgeInsets.only(top: 0, right: 0);
                  _border =
                      const BorderRadius.only(bottomLeft: Radius.circular(0));
                  _sizedBoxHeight = 0;
                  flag = true;
                }
              },
            );
          },
        ),
      ),
    ]);
  }
}
