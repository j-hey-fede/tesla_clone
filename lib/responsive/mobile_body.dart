import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';
import 'package:place_space/data/tesla_data.dart';
import 'package:place_space/widgets/logo_block.dart';
import 'package:place_space/widgets/mobile_bottom_buttons.dart';
import 'package:place_space/widgets/mobile_side_menu.dart';
import 'package:place_space/widgets/text_block.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  final data = carList;

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
          const LogoBlock(),
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
      endDrawer: const Drawer(
        child: MobileSideMenu(),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: constraints.maxHeight,
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Image.asset(data[index].image,
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity),
                    Center(
                      child: TextBlock(
                        headerText: data[index].name,
                        inputText: data[index].content,
                      ),
                    ),
                    const Center(
                      child: MobileBottomButtons(),
                    )
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
