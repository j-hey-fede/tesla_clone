import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';
import 'package:place_space/widgets/custom_button.dart';
import 'package:place_space/widgets/custom_icon.dart';

class MobileBottomButtons extends StatelessWidget {
  const MobileBottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButton(
          inputText: 'Custom Order',
          height: 36,
          onClickButton: () {},
          buttonColor: const Color.fromARGB(221, 29, 27, 27),
          textColor: const Color.fromARGB(255, 216, 213, 213),
          textSize: 16,
          width: MediaQuery.of(context).size.width * 0.85,
        ),
        const SizedBox(height: 12),
        CustomButton(
          inputText: 'Existing Inventory',
          height: 36,
          onClickButton: () {},
          buttonColor: const Color.fromARGB(255, 216, 213, 213),
          textColor: const Color.fromARGB(221, 29, 27, 27),
          textSize: 16,
          width: MediaQuery.of(context).size.width * 0.85,
        ),

        // Animated Bouncing icon
        CustomIcon(
          icon: Icons.expand_more,
          iconSize: 30,
          iconColor: Colors.white70,
          background: Colors.transparent,
          onPress: () {},
        ),
        // const SizedBox(height: 5),
      ],
    );
  }
}
