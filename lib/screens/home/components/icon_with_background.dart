import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class IconWithBackground extends StatelessWidget {
  final IconData iconData;

  const IconWithBackground({
    Key? key,
    required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: const BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
      color: primaryColor.withOpacity(0.1),
      child: InkWell(
          borderRadius: const BorderRadius.all(
            Radius.circular(
              defaultBorderRadius,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: Icon(
              iconData,
              color: primaryColor,
              size: 18,
            ),
          )),
    );
  }
}
