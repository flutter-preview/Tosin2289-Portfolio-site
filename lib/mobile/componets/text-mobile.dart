import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "My name",
            style: TextStyle(fontSize: 50, color: Colors.black),
          ),
          RichText(
            text: const TextSpan(children: [
              TextSpan(
                  text: 'is',
                  style: TextStyle(fontSize: 50, color: Colors.black)),
              TextSpan(
                text: ' Tosin',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple),
              ),
            ]),
          ),
          const Text(
            "I am a mobile application developer and also a technical writer with  1 year of experience.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
