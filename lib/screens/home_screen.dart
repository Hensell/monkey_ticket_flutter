import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            SvgPicture.asset('assets/images/hono.svg', width: 300, height: 300),

            SvgPicture.asset(
              'assets/images/monkey.svg',
              height: 300,
              width: 500,
            ),
            SvgPicture.string(
              '<svg viewBox="0 0 100 100"><circle cx="50" cy="50" r="40" stroke="black" fill="red"/></svg>',
            ),
          ],
        ),
      ),
    );
  }
}
