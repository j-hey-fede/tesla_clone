import 'package:flutter/material.dart';
import 'package:place_space/constants/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({
    super.key,
    required this.mobileBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < mobileScreen) {
        return mobileBody;
      } else {
        return desktopBody;
      }
    });
  }
}

// creating two separate files for mobile layout and desktop layout... 
// these won't be the final product - just placeholders for now