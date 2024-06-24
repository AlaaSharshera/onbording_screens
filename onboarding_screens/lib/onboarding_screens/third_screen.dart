import 'package:flutter/material.dart';
import 'package:onboarding_screens/components/custom_boldtext.dart';
import 'package:onboarding_screens/components/custom_button.dart';
import 'package:onboarding_screens/components/custom_regulartext.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221F1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/screen3.png',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomBoldText("Achieve Higher Goals"),
          const SizedBox(
            height: 15,
          ),
          CustomRegularText(
              "By boosting your producivity we help\n you achieve higher goals"),
          const SizedBox(
            height: 60,
          ),
          CustomButton(165, 56, "Get Started", () {}),
        ],
      ),
    );
  }
}
