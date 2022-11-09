import 'package:flutter/material.dart';

class CustomIcon extends StatefulWidget {
  final IconData icon;
  final double iconSize;
  final Color iconColor;
  final Color background;
  final Function onPress;

  const CustomIcon({
    super.key,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.background,
    required this.onPress,
  });

  @override
  State<CustomIcon> createState() => _CustomIconState();
}

class _CustomIconState extends State<CustomIcon> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (val) {
        setState(() {
          isHover = val;
        });
      },
      onTap: () {
        widget.onPress;
      },
      child: AnimatedContainer(
        color: widget.background,
        height: 70,
        duration: const Duration(
          milliseconds: 200,
        ),
        padding: EdgeInsets.only(
          top: (isHover) ? 15 : 25,
          bottom: (isHover) ? 15 : 25,
        ),
        child: Icon(
          widget.icon,
          size: widget.iconSize,
          color: widget.iconColor,
        ),
      ),
    );
  }
}
