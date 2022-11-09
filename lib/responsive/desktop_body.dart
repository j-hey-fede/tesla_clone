import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:place_space/constants/colors.dart';
import 'package:place_space/widgets/custom_button.dart';
import 'package:place_space/widgets/custom_icon.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _key,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'T E S L A',
                style: GoogleFonts.cuteFont(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: kTextPrimary,
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Model 3',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Model S',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Model X',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextButton(
              onPressed: () {
                _key.currentState!.openEndDrawer();
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: kTextPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const SizedBox(
              height: 50,
            ),
            ListTile(
              title: const Text(
                'Investor Relations',
              ),
              onTap: () {
                Navigator.of(context);
              },
            ),
            ListTile(
              title: const Text(
                'Test Drive',
              ),
              onTap: () {
                Navigator.of(context);
              },
            ),
            ListTile(
              title: const Text(
                'Inventory',
              ),
              onTap: () {
                Navigator.of(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(
              'assets/images/model3W.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 150,
                  ),
                  Text(
                    'Model 3',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Order Online for Touchless Delivery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomButton(
                          inputText: 'Custom Order',
                          height: 44,
                          onClickButton: () {},
                          buttonColor: const Color.fromARGB(221, 29, 27, 27),
                          textColor: const Color.fromARGB(255, 216, 213, 213),
                          textSize: 16,
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                        const SizedBox(width: 10),
                        CustomButton(
                          inputText: 'Existing Inventory',
                          height: 44,
                          onClickButton: () {},
                          buttonColor: const Color.fromARGB(255, 216, 213, 213),
                          textColor: const Color.fromARGB(221, 29, 27, 27),
                          textSize: 16,
                          width: MediaQuery.of(context).size.width * 0.25,
                        ),
                      ],
                    ),
                    // Animated Bouncing Icon...
                    CustomIcon(
                      icon: Icons.expand_more,
                      iconSize: 30,
                      iconColor: kTextPrimary,
                      background: Colors.transparent,
                      onPress: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
