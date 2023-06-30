import 'package:flutter/material.dart';

class HireMeBtnD extends StatelessWidget {
  const HireMeBtnD({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: Colors.blue,
      shape: const StadiumBorder(),
      onPressed: () {},
      child: const Text(
        "Hire Me",
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    );
  }
}
