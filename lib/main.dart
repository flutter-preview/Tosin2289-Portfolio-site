import 'package:flutter/material.dart';
import 'package:portfolio/responsive-layout/responsive.dart';

import 'desktop/homeview-desktop.dart';
import 'mobile/homeview-mobile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Code Blast',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Responsive(
        mobilebody: MobileView(),
        desktopbody: DesktopView(),
      ),
    );
  }
}
