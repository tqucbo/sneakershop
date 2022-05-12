import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';

class CategoryCard extends StatelessWidget {
  final String icon, title;
  final VoidCallback press;

  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2, horizontal: defaultPadding / 4),
        child: SizedBox(
          height: 60,
          width: 75,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                icon,
              ),
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle2,
              ),
            ],
          ),
        ),
      ),
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
        ),
      ),
    );
  }
}
