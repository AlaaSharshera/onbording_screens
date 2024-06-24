import 'package:flutter/material.dart';
import 'package:onboarding_screens/components/custom_boldtext.dart';
import 'package:onboarding_screens/components/custom_button.dart';
import 'package:onboarding_screens/components/custom_regulartext.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff221F1E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage(
              'assets/images/screen2.png',
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomBoldText("Work Seamlessly"),
          const SizedBox(
            height: 15,
          ),
          CustomRegularText(
              "Get your work done seamlessly\n without interruption"),
          const SizedBox(
            height: 60,
          ),
          CustomButton(114, 54, "Next", () {}),
        ],
      ),
    );
  }
}
