import 'package:flutter/material.dart';
import 'package:onboarding_screens/onboarding_screens/first_screen.dart';
import 'package:onboarding_screens/onboarding_screens/second_screen.dart';
import 'package:onboarding_screens/onboarding_screens/third_screen.dart';

void main() {
  runApp(const OnBoarding());
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThirdScreen(),
    );
  }
}
