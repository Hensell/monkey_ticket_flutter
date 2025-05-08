import 'package:flutter/material.dart';
import 'package:monkey_ticket_flutter/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Monkey ticket!',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff693A18)),
      ),
      home: const HomeScreen(),
    );
  }
}
