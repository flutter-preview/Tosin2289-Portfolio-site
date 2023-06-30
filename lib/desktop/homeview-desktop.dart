import 'package:flutter/material.dart';

import 'componets/appbar-desktop.dart';
import 'componets/hiremebtn-desktop.dart';
import 'componets/image-desktop.dart';
import 'componets/language-desktop.dart';
import 'componets/projecttext-desktop.dart';
import 'componets/text-desktop.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBarD(),
                CustomImageD(),
                SizedBox(
                  height: 50,
                ),
                CustomTextD(),
                SizedBox(
                  height: 30,
                ),
                HireMeBtnD(),
                SizedBox(
                  height: 60,
                ),
                CustomLanguageD(),
                SizedBox(
                  height: 60,
                ),
                TextProjectD()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
