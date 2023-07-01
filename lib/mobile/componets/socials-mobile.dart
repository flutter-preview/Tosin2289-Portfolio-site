import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsM extends StatefulWidget {
  const SocialsM({Key? key}) : super(key: key);

  @override
  State<SocialsM> createState() => _SocialsMState();
}

class _SocialsMState extends State<SocialsM> {
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
    return SizedBox(
      width: 280,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://github.com/Tosin2289'));
            },
            icon: const Icon(FontAwesomeIcons.github,
                color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://twitter.com/baddestkid18'));
            },
            icon: const Icon(FontAwesomeIcons.twitter,
                color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.instagram.com/baddestkid24/'));
            },
            icon: const Icon(FontAwesomeIcons.instagram,
                color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://medium.com/@Code-blast'));
            },
            icon: const Icon(FontAwesomeIcons.medium,
                color: Colors.white, size: 30),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/ayoola-tosin-b401a0211/'));
            },
            icon: const Icon(FontAwesomeIcons.linkedin,
                color: Colors.white, size: 30),
          ),
        ],
      ),
    );
  }
}
