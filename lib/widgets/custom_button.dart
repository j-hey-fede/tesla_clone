import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String inputText;
  final double height;
  final Function onClickButton;
  final Color buttonColor;
  final Color textColor;
  final double textSize;
  final double width;

  const CustomButton({
    super.key,
    required this.inputText,
    required this.height,
    required this.onClickButton,
    required this.buttonColor,
    required this.textColor,
    required this.textSize,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClickButton;
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(
            8.0,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              inputText,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: textSize,
                color: textColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
