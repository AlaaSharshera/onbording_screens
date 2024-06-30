import 'package:flutter/material.dart';
import 'package:onboarding_screens/components/custom_screen.dart';
import 'package:onboarding_screens/models/CustomScreen.dart';

class OnBoardingSlider extends StatefulWidget {
  const OnBoardingSlider({super.key});

  @override
  State<OnBoardingSlider> createState() => _OnBoardingSliderState();
}

class _OnBoardingSliderState extends State<OnBoardingSlider> {
  final List<CustomScreenModel> screens = [
    const CustomScreenModel(
      image: 'assets/images/screen1.png',
      boldtext: "Boost Productivity",
      regulartext:
          "Foc.io helps you boost your productivity\n on a differnet level",
      width: 114,
      height: 54,
      buttontext: "Next",
    ),
    const CustomScreenModel(
      image: 'assets/images/screen2.png',
      boldtext: "Work Seamlessly",
      regulartext: "Get your work done seamlessly\n without interruption",
      width: 114,
      height: 54,
      buttontext: "Next",
    ),
    const CustomScreenModel(
      image: 'assets/images/screen3.png',
      regulartext:
          "By boosting your producivity we help\n you achieve higher goals",
      boldtext: "Achieve Higher Goals",
      width: 165,
      height: 56,
      buttontext: "Get Started",
    ),
  ];

  PageController newPageController = PageController();

  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff221F1E),
        body: PageView.builder(
            controller: newPageController,
            onPageChanged: (value) {
              setState(() {
                page = value;
                //print(page);
               
              });
            },
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return CustomScreen(
                screen: screens[index],
                pagenumber: page,
                nextscreen: () {
                  newPageController.animateToPage(index + 1,
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeIn);
                },
              );
            }));
  }
}
