import 'package:flutter/material.dart';
import 'package:onboarding_screens/components/custom_boldtext.dart';
import 'package:onboarding_screens/components/custom_button.dart';
import 'package:onboarding_screens/components/custom_regulartext.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221F1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/screen1.png',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomBoldText("Boost Productivity"),
          const SizedBox(
            height: 15,
          ),
          CustomRegularText(
              "Foc.io helps you boost your productivity\n on a differnet level"),
          const SizedBox(
            height: 60,
          ),
          CustomButton(114, 54, "Next", () {}),
        ],
      ),
    );
  }
}
