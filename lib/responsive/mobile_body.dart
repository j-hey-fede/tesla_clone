import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:place_space/widgets/custom_button.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      key: _key,
      appBar: AppBar(
        toolbarHeight: 70,
        toolbarOpacity: 0.2,
        bottomOpacity: 0.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'T E S L A',
              style: GoogleFonts.cuteFont(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: kTextPrimary,
              ),
            ),
          ),
          const Spacer(),
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
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
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
                'Model 3',
              ),
              onTap: () {
                Navigator.of(context);
              },
            ),
            ListTile(
              title: const Text(
                'Model S',
              ),
              onTap: () {
                Navigator.of(context);
              },
            ),
            ListTile(
              title: const Text(
                'Model X',
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
              'assets/images/model3.jpg',
              fit: BoxFit.cover,
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
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomButton(
                    inputText: 'Custom Order',
                    height: 44,
                    onClickButton: () {},
                    buttonColor: const Color.fromARGB(221, 29, 27, 27),
                    textColor: const Color.fromARGB(255, 216, 213, 213),
                    textSize: 16,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                  const SizedBox(height: 12),
                  CustomButton(
                    inputText: 'Existing Inventory',
                    height: 44,
                    onClickButton: () {},
                    buttonColor: const Color.fromARGB(255, 216, 213, 213),
                    textColor: const Color.fromARGB(221, 29, 27, 27),
                    textSize: 16,
                    width: MediaQuery.of(context).size.width * 0.85,
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
