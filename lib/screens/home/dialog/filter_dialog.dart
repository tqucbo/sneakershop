import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

import 'package:onlineshop/screens/home/dialog/components/category_filter_list_item.dart';
import 'package:onlineshop/screens/home/dialog/components/header_of_the_filter_dialog.dart';
import 'package:onlineshop/screens/home/dialog/components/pricing_slider.dart';
import 'package:onlineshop/screens/home/dialog/components/size_slider.dart';
import 'package:onlineshop/shared_dart_files/button_type_1.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(
          defaultPadding,
        ),
        child: Column(
          children: [
            const HeaderOfTheFilterDialog(),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Category',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const CategoryFilterListItem(),
                    const SizedBox(
                      height: 16,
                    ),
                    const PricingSlider(),
                    const SizeSlider(),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
            ButtonType1(press: () {}, text: 'Apply'),
          ],
        ),
      ),
    );
  }
}
