import 'package:anktalk/features/auth_login_signup/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _rotationAnimation;
  late AnimationController _textController;
  late Animation<double> _textScaleAnimation;
  bool _animationCompleted = false;

  @override
  void initState() {
    super.initState();
    _initializeAnimations();
    _startAnimations();
  }

  void _initializeAnimations() {
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1.3, end: 0.9).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _rotationAnimation = Tween<double>(begin: -35.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _textController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _textScaleAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _textController,
        curve: Curves.easeInOut,
      ),
    );
  }

  void _startAnimations() {
    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          _animationCompleted = true;
        });
        _textController.forward();
      }
    });

    Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _textController.dispose();
    super.dispose();
  }

  Widget buildPositioned({
    required double top,
    required double left,
    required String assetPath,
    double? width,
    double? height,
    bool scaleTransition = false,

    Animation<double>? scaleAnimation,
  }) {
    Widget child = SizedBox(
      width: width,
      height: height,
      child: Image.asset(assetPath),
    );

    if (scaleTransition && scaleAnimation != null) {
      child = ScaleTransition(scale: scaleAnimation, child: child);
    }

    return Positioned(
      top: top,
      left: left,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Adjust positions and widths based on screen height for portrait mode
    final double leftPosition = (screenWidth - 273) / 2;
    final double left1 = (screenWidth - 227) / 2;
    final double leftP = (screenWidth - 367) / 2;

    // Adjust container sizes based on screen height
    final double containerWidth = screenHeight < 600 ? 367 * 0.8 : 367;
    final double containerHeight = screenHeight < 600 ? 374 * 0.8 : 374;
    final double imgWidth = screenHeight < 600 ? 273 * 0.8 : 273;
    final double imgHeight = screenHeight < 600 ? 99 * 0.8 : 99;
    final double img1Width = screenHeight < 600 ? 227 * 0.8 : 227;
    final double img1Height = screenHeight < 600 ? 87 * 0.8 : 87;

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
            top: 0.12.sh,
            left: leftP,
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Transform(
                  transform: Matrix4.identity()
                    ..scale(_scaleAnimation.value)
                    ..rotateZ(_rotationAnimation.value * 3.14159 / 180),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: containerWidth,
                    height: containerHeight,
                    child: Image.asset('assets/images/cir.png'),
                  ),
                );
              },
            ),
          ),
          if (_animationCompleted)
            buildPositioned(
              top: 0.58.sh,
              left: leftPosition,
              assetPath: 'assets/images/anktalk.png',
              width: imgWidth,
              height: imgHeight,
            ),
          if (_animationCompleted)
            buildPositioned(
              top: 0.75.sh,
              left: left1,
              assetPath: 'assets/images/img_1.png',
              width: img1Width,
              height: img1Height,
              scaleTransition: true,
              scaleAnimation: _textScaleAnimation,
            ),
          if (_animationCompleted)
            Positioned(
              top: 0.960.sh,
              left: (screenWidth - screenWidth * 0.3) / 2,
              child: SizedBox(
                width: screenWidth * 0.3,
                height: screenHeight * 0.05,
                child: const Center(
                  child: Text(
                    '© Copyright 2024',
                    style: TextStyle(color: Colors.white,fontSize: 10),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
