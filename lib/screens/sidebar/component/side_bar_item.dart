import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/icon_with_background.dart';

class SideBarItem extends StatelessWidget {
  final VoidCallback press;
  final IconData iconData;
  final String text;
  final bool isActive;

  const SideBarItem({
    Key? key,
    required this.press,
    required this.iconData,
    required this.text,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: press,
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Row(
            children: [
              IconWithBackground(
                iconData: iconData,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: isActive ? FontWeight.bold : FontWeight.w400,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
