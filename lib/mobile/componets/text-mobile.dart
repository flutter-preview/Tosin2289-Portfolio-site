import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomTextM extends StatelessWidget {
  const CustomTextM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text("My name is ",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                )),
            SizedBox(
              width: 200.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
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
        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const Text(
            'I am a ',
            style: TextStyle(
              fontSize: 28.0,
              color: Colors.white,
            ),
          ),
          DefaultTextStyle(
            style: const TextStyle(
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                color: Colors.purple),
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
        ]),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "I am a mobile application developer and also a  technical writer with  1 year of experience.",
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
