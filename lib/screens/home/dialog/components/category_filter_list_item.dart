import 'package:flutter/material.dart';
import 'package:onlineshop/models/category_filter.dart';
import 'package:onlineshop/screens/home/dialog/components/category_filter_item.dart';

class CategoryFilterListItem extends StatefulWidget {
  const CategoryFilterListItem({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryFilterListItem> createState() => _CategoryFilterListItemState();
}

class _CategoryFilterListItemState extends State<CategoryFilterListItem> {
  static int _currentCategoryFilterItemSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categoryFilters.length,
          (index) => CategoryFilterItem(
            category: categoryFilters[index].name,
            press: () {
              _currentCategoryFilterItemSelected = index;
              setState(() {});
            },
            isActive:
                _currentCategoryFilterItemSelected == index ? true : false,
          ),
        ),
      ),
    );
  }
}
