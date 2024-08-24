import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackgroundImgRotation extends StatefulWidget {
  final int seconds;
  final double begin;
  final double end;

  const BackgroundImgRotation({
    super.key,
    required this.seconds,
    required this.begin,
    required this.end,
  });

  @override
  State<BackgroundImgRotation> createState() => BackgroundImgRotationState();
}

class BackgroundImgRotationState extends State<BackgroundImgRotation>
    with TickerProviderStateMixin {
  late AnimationController _continuousRotationController;
  late Animation<double> _continuousRotationAnimation;

  @override
  void initState() {
    super.initState();
    _continuousRotationController = AnimationController(
      duration: Duration(seconds: widget.seconds),
      vsync: this,
    )..repeat();

    _continuousRotationAnimation =
        Tween<double>(begin: widget.begin, end: widget.end).animate(CurvedAnimation(
          parent: _continuousRotationController,
          curve: Curves.linear,
        ));
  }

  void changeRotationSpeed(int seconds) {
    _continuousRotationController.duration = Duration(seconds: seconds);
    _continuousRotationController.forward(from: 0);  // Restart the animation with the new speed
  }

  @override
  void dispose() {
    _continuousRotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _continuousRotationController,
        builder: (context, child) {
          return Transform.rotate(
            angle: _continuousRotationAnimation.value * 3.14159 / 180,
            child: Image.asset(
              'assets/images/cir.png',
              width: 389.w,
              height: 396.h,
            ),
          );
        },
      ),
    );
  }
}
