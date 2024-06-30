import 'package:flutter/material.dart';
import 'package:onboarding_screens/onboarding_screens/onbordingSlider_Screen.dart';

void main() {
  runApp(const OnBoarding());
}

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingSlider(),
    );
  }
}
