import 'package:flutter/material.dart';

class TicketAnimationController {
  final AnimationController controller;
  late final Animation<double> heightAnimation;

  TicketAnimationController({
    required TickerProvider vsync,
    double beginHeight = 0,
    double endHeight = 160,
    Duration duration = const Duration(seconds: 2),
    Curve curve = Curves.bounceOut,
  }) : controller = AnimationController(vsync: vsync, duration: duration) {
    heightAnimation = Tween<double>(
      begin: beginHeight,
      end: endHeight,
    ).animate(CurvedAnimation(parent: controller, curve: curve));
  }

  void start() {
    controller.forward(from: 0);
  }

  void dispose() {
    controller.dispose();
  }
}
