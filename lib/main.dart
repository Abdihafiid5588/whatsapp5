import 'package:flutter/material.dart';
import 'package:whatsapp5/colors.dart';
import 'package:whatsapp5/responsive/responsive_layout.dart';
import 'package:whatsapp5/screen/mobile_screen_layout.dart';
import 'package:whatsapp5/screen/mweb_screen_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp Ui',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const responsiveLayout(
        mibilScreenLayout:  mobileSceenLayout(),
        webScreenLayout:  webSceenLayout(),
      ),
    );
  }
}
