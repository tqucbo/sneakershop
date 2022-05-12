import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  final VoidCallback press;

  const ColorDot({
    Key? key,
    required this.color,
    required this.isSelected,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.all(defaultPadding / 4),
        decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? primaryColor : Colors.transparent,
            ),
            shape: BoxShape.circle),
        child: CircleAvatar(
          radius: 10,
          backgroundColor: color,
        ),
      ),
    );
  }
}
