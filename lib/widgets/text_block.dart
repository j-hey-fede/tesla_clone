import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final String headerText;
  final String inputText;

  const TextBlock({
    Key? key,
    required this.headerText,
    required this.inputText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Text(
          headerText,
          style: const TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          inputText,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
