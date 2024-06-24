import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(this.width, this.height, this.text, this.ontap, {super.key});
  String? text;
  double? height;
  double? width;
  VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!,
      height: height!,
      child: ElevatedButton(
        onPressed: ontap!,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(0xffEF895F)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Text(
          text!,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }
}
