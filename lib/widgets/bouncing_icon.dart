import 'package:flutter/material.dart';

class BouncingIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Radius iconRadius;
  final Color background;

  const BouncingIcon({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.iconRadius,
    required this.background,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(iconRadius),
        color: background,
      ),
      height: 70,
      width: 70,
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
    );
  }
}
