import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/category.dart';
import 'package:onlineshop/screens/home/components/category_card.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
            ),
            child: CategoryCard(
              icon: categories[index].icon,
              title: categories[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}
