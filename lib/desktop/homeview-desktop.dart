import 'package:flutter/material.dart';

import 'componets/appbar-desktop.dart';
import 'componets/hiremebtn-desktop.dart';
import 'componets/image-desktop.dart';
import 'componets/language-desktop.dart';
import 'componets/projecttext-desktop.dart';
import 'componets/socials-desktop.dart';
import 'componets/text-desktop.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(24.0),
                      child: CustomAppBarD(),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTextD(),
                  Container(),
                  CustomImageD(),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: const SocialsD(),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: const CustomLanguageD(),
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: const TextProjectD(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
