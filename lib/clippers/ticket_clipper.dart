import 'package:flutter/material.dart';

class TicketClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 10);

    const zigzagSize = 10.0;
    const curveDepth = 6.0;

    for (double x = 0; x < size.width; x += zigzagSize) {
      final midX = x + zigzagSize / 2;

      path.quadraticBezierTo(
        midX,
        size.height + curveDepth,
        x + zigzagSize,
        size.height - 10,
      );
    }

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
