import 'package:flutter/material.dart';
import 'package:onboarding_screens/models/CustomScreen.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen(
      {this.screen, this.nextscreen, required this.pagenumber, super.key});

  final CustomScreenModel? screen;
  final VoidCallback? nextscreen;
  final int pagenumber;

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(
            widget.screen!.image!,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          widget.screen!.boldtext!,
          style: const TextStyle(
              color: Colors.white, fontSize: 28, fontFamily: "Gilroy"),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          widget.screen!.regulartext!,
          textAlign: TextAlign.center,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontFamily: "Gilroy Regular"),
        ),
        const SizedBox(
          height: 60,
        ),
        SizedBox(
          width: widget.screen?.width,
          height: widget.screen?.height,
          child: ElevatedButton(
            onPressed: widget.nextscreen,
            style: ButtonStyle(
              backgroundColor: const WidgetStatePropertyAll(Color(0xffEF895F)),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: Text(
              widget.screen!.buttontext!,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i <= 2; i++)
              Container(
                width: (i == widget.pagenumber) ? 15 : 6,
                height: 6,
                margin: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: (i == widget.pagenumber) ? Colors.white : Colors.grey,
                ),
              ),
          ],
        )
      ],
    );
  }
}
