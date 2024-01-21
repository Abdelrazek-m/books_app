
import 'package:flutter/material.dart';

class SliderText extends StatelessWidget {
  const SliderText({
    super.key,
    required this.animationController,
    required this.slidingAnimaiton,
  });

  final AnimationController animationController;
  final Animation<Offset> slidingAnimaiton;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context,_) {
        return SlideTransition(
          position: slidingAnimaiton,
          child: const Text(
            'read books for free',
            style: TextStyle(
                // color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w200),
          ),
        );
      }, 
    );
  }
}
