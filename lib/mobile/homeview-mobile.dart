import 'package:flutter/material.dart';

import 'componets/appbar-mobile.dart';
import 'componets/hiremebtn-mobile.dart';
import 'componets/image-mobile.dart';
import 'componets/language-mobile.dart';
import 'componets/projexttext-mobile.dart';
import 'componets/text-mobile.dart';

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

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
                CustomAppBarM(),
                CustomImageM(),
                SizedBox(
                  height: 50,
                ),
                CustomTextM(),
                SizedBox(
                  height: 30,
                ),
                HireMeBtnM(),
                SizedBox(
                  height: 60,
                ),
                CustomLanguageM(),
                SizedBox(
                  height: 60,
                ),
                TextProjectM()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
