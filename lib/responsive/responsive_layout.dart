import 'package:flutter/material.dart';
import 'package:whatsapp5/screen/mobile_screen_layout.dart';

class responsiveLayout extends StatelessWidget {
  final Widget mibilScreenLayout;
    final Widget webScreenLayout;

  const responsiveLayout({super.key, required this.mibilScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return  LayoutBuilder(
          builder: (context, constraints) {
        if(constraints.maxWidth > 938) {
          return webScreenLayout;
        }
        return mobileSceenLayout();
      },
    );
  }
}
