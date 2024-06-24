import 'package:flutter/material.dart';

class CustomRegularText extends StatelessWidget {
  CustomRegularText(this.text, {super.key});
  String? text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: Colors.white, fontSize: 14, fontFamily: "Gilroy Regular"),
    );
  }
}
