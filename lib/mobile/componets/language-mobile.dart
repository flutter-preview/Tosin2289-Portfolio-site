import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomLanguageM extends StatelessWidget {
  const CustomLanguageM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              IndividualBox(
                text: 'Dart',
                color: Colors.blue.shade700,
                length: 100,
                icon: "assets/dart.png",
              ),
              IndividualBox(
                  text: 'Python',
                  color: Colors.blue.shade900,
                  length: 130,
                  icon: "assets/pythons.png"),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const IndividualBox(
                text: 'Flutter',
                color: Colors.blue,
                length: 140,
                icon: "assets/flutter.png",
              ),
              IndividualBox(
                text: 'Firebase',
                color: Colors.yellow.shade800,
                length: 140,
                icon: "assets/firebase.png",
              )
            ],
          ),
        ],
      ),
    );
  }
}

class IndividualBox extends StatelessWidget {
  final String text;
  final color;
  final double length;
  final icon;
  const IndividualBox({
    Key? key,
    required this.text,
    required this.color,
    required this.length,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 50,
        width: length,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: color),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                height: 30,
              ),
              Text(
                text,
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
