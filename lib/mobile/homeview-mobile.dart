import 'package:flutter/material.dart';

import 'componets/appbar-mobile.dart';
import 'componets/image-mobile.dart';
import 'componets/text-mobile.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            const CustomImage(),
            Column(
              children: const [
                CustomAppBar(),
                SizedBox(
                  height: 600,
                ),
                CustomText()
              ],
            ),
          ],
        ),
      ),
    );
  }
}
