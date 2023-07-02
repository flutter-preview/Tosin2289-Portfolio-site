import 'package:flutter/material.dart';

class CustomLanguageD extends StatelessWidget {
  const CustomLanguageD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IndividualBox(
                  text: 'Dart',
                  color: Colors.blue.shade700,
                  length: 160,
                  icon: "assets/dart.png",
                ),
                IndividualBox(
                  text: 'Python',
                  color: Colors.blue.shade900,
                  length: 160,
                  icon: "assets/pythons.png",
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: 350,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const IndividualBox(
                  text: 'Flutter',
                  color: Colors.blue,
                  length: 160,
                  icon: "assets/flutter.png",
                ),
                IndividualBox(
                  text: 'Firebase',
                  color: Colors.yellow.shade800,
                  length: 160,
                  icon: "assets/firebase.png",
                )
              ],
            ),
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
    return Container(
      height: 60,
      width: length,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 30,
            ),
            const SizedBox(
              width: 10,
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
    );
  }
}
