import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:place_space/constants/colors.dart';

class LogoBlock extends StatelessWidget {
  const LogoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'T E S L A',
        style: GoogleFonts.cuteFont(
          fontSize: 38,
          fontWeight: FontWeight.bold,
          color: kTextPrimary,
        ),
      ),
    );
  }
}
