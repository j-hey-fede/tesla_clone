import 'package:flutter/material.dart';
import 'package:place_space/constants/colors.dart';
import 'package:place_space/widgets/custom_button.dart';
import 'package:place_space/widgets/custom_icon.dart';

class DesktopBottomButtons extends StatelessWidget {
  const DesktopBottomButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          iconColor: Colors.white70,
          background: Colors.transparent,
          onPress: () {},
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
