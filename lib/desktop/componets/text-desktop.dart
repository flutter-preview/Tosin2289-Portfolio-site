import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'hiremebtn-desktop.dart';

class CustomTextD extends StatelessWidget {
  const CustomTextD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text("My name is ", style: TextStyle(fontSize: 28)),
              SizedBox(
                width: 250.0,
                child: DefaultTextStyle(
                  style: const TextStyle(
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                  child: AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(milliseconds: 5000),
                    animatedTexts: [
                      TyperAnimatedText(
                        'Tosin Ayoola',
                        speed: const Duration(milliseconds: 1000),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Text(
                'I am a ',
                style: TextStyle(fontSize: 30.0),
              ),
              DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 33.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FadeAnimatedText(
                      'Mobile Developer',
                    ),
                    FadeAnimatedText(
                      'Technical writer',
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "I am a mobile application developer and also a \n technical writer with  1 year of experience.",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
            height: 30,
          ),
          const HireMeBtnD(),
        ],
      ),
    );
  }
}
