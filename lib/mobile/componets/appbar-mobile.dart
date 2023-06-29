import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                )),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(colors: [
                Colors.yellow,
                Colors.purple,
                Colors.blue,
              ]).createShader(
                Rect.fromLTWH(0, 0, bounds.width, bounds.height),
              ),
              child: const Text(
                "PHENOMES",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            MaterialButton(
              color: Colors.grey[300],
              shape: const StadiumBorder(),
              onPressed: () {},
              child: const Text("Contact Me"),
            )
          ],
        ),
      ),
    );
  }
}
