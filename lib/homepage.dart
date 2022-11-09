import 'package:flutter/material.dart';
import 'package:place_space/responsive/desktop_body.dart';
import 'package:place_space/responsive/mobile_body.dart';
import 'package:place_space/responsive/responsive_layout.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MobileBody(),
      desktopBody: DesktopBody(),
    );
  }
}

// let's go!

// Building the framework for a responsive layout....
