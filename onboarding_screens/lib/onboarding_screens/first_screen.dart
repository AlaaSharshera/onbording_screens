import 'package:flutter/material.dart';

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
          const Text(
            "Boost Productivity",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontFamily: "Gilroy"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Foc.io helps you boost your productivity\n on a differnet level",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: "Gilroy Regular"),
          ),
          const SizedBox(
            height: 60,
          ),
          SizedBox(
            width: 114,
            height: 54,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor:
                      const MaterialStatePropertyAll(Color(0xffEF895F)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
