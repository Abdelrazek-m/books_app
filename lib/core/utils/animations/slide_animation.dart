import 'package:flutter/material.dart';

class SlideTo extends PageRouteBuilder {
  final dynamic page;
  SlideTo({required this.page})
      : super(
            pageBuilder: (context, animation, animationTow) => page,
            transitionsBuilder: (context, animation, animationTow, child) {
              Offset begin = const Offset(1, 0);
              Offset end = Offset.zero;
              return SlideTransition(
                position: animation.drive(Tween(begin: begin, end: end)),
                child: child,
              );
            });
}
