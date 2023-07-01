import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'componets/appbar-mobile.dart';
import 'componets/hiremebtn-mobile.dart';
import 'componets/image-mobile.dart';
import 'componets/language-mobile.dart';
import 'componets/projexttext-mobile.dart';
import 'componets/socials-mobile.dart';
import 'componets/text-mobile.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}

class _MobileViewState extends State<MobileView> {
  Future lunchurl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else
      showDialog(
          context: context,
          builder: ((context) {
            return AlertDialog(
              content: Text('error loading link'),
            );
          }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: ShaderMask(
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
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              color: Colors.grey[300],
              shape: const StadiumBorder(),
              onPressed: () {},
              child: const Text("Contact Me"),
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[800],
        child: ListView(children: [
          DrawerHeader(
            child: Image.asset('assets/spline.png'),
          ),
          SizedBox(
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.label,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "CV",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "About me",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(Uri.parse('https://github.com/Tosin2289'));
                  },
                  leading: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Github",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(Uri.parse('https://twitter.com/baddestkid18'));
                  },
                  leading: const Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Twitter",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(
                        Uri.parse('https://www.instagram.com/baddestkid24/'));
                  },
                  leading: const Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Instagram",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(Uri.parse('https://medium.com/@Code-blast'));
                  },
                  leading: const Icon(
                    FontAwesomeIcons.linkedinIn,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Medium",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                ListTile(
                  onTap: () {
                    launchUrl(Uri.parse(
                        'https://www.linkedin.com/in/ayoola-tosin-b401a0211/'));
                  },
                  leading: const Icon(
                    FontAwesomeIcons.github,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Linkedin",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
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
                  height: 50,
                ),
                SocialsM(),
                SizedBox(
                  height: 30,
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
