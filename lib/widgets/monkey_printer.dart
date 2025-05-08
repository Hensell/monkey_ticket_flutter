import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MonkeyPrinter extends StatelessWidget {
  final double width;
  final double height;

  const MonkeyPrinter({super.key, this.width = 300, this.height = 300});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/images/monkey.svg',
      width: width,
      height: height,
    );
  }
}
