import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/category_product.dart';
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
          categorieproducts.length,
          (index) => Padding(
            padding: const EdgeInsets.only(
              right: defaultPadding,
            ),
            child: CategoryCard(
              icon: categorieproducts[index].icon,
              title: categorieproducts[index].title,
              press: () {},
            ),
          ),
        ),
      ),
    );
  }
}
