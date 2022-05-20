import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class CategoryFilterItem extends StatelessWidget {
  final String category;
  final VoidCallback press;
  final bool isActive;

  const CategoryFilterItem({
    Key? key,
    required this.category,
    required this.press,
    required this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: Material(
        color: isActive ? primaryColor : Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(defaultBorderRadius),
        ),
        child: InkWell(
          onTap: press,
          borderRadius: const BorderRadius.all(
            Radius.circular(defaultBorderRadius),
          ),
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Text(
              category,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: isActive ? Colors.white : primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}
