import 'package:flutter/material.dart';

class CustomBoldText extends StatelessWidget {
  CustomBoldText(this.text, {super.key});
  String? text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
          color: Colors.white, fontSize: 28, fontFamily: "Gilroy"),
    );
  }
}
