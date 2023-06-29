import 'package:flutter/material.dart';

class HireMeBtnM extends StatelessWidget {
  const HireMeBtnM({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: Colors.purple,
      shape: const StadiumBorder(),
      onPressed: () {},
      child: const Text(
        "Hire Me",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
