import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';
import 'package:place_space/widgets/desktop_bottom_buttons.dart';
import 'package:place_space/widgets/desktop_side_menu.dart';
import 'package:place_space/widgets/desktop_top_bar.dart';
import 'package:place_space/widgets/logo_block.dart';
import 'package:place_space/widgets/text_block.dart';

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
          children: const [
            LogoBlock(),
            SizedBox(width: 20),
            DesktopTopBar(),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5),
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
      endDrawer: const Drawer(
        child: DesktopSideMenu(),
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
            const Center(child: TextBlock()),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: DesktopBottomButtons(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
