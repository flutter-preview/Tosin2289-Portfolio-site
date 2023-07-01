import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialsD extends StatefulWidget {
  const SocialsD({Key? key}) : super(key: key);

  @override
  State<SocialsD> createState() => _SocialsDState();
}

class _SocialsDState extends State<SocialsD> {
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
      width: 350,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://github.com/Tosin2289'));
            },
            icon: const Icon(FontAwesomeIcons.github, size: 40),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://twitter.com/baddestkid18'));
            },
            icon: const Icon(FontAwesomeIcons.twitter, size: 40),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://www.instagram.com/baddestkid24/'));
            },
            icon: const Icon(FontAwesomeIcons.instagram, size: 40),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse('https://medium.com/@Code-blast'));
            },
            icon: const Icon(FontAwesomeIcons.medium, size: 40),
          ),
          IconButton(
            onPressed: () {
              launchUrl(Uri.parse(
                  'https://www.linkedin.com/in/ayoola-tosin-b401a0211/'));
            },
            icon: const Icon(FontAwesomeIcons.linkedin, size: 40),
          ),
        ],
      ),
    );
  }
}
