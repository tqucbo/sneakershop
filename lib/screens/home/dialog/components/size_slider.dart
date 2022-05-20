import 'package:flutter/material.dart';
import 'package:onlineshop/screens/home/dialog/components/silder_in_filter_dialog.dart';

class SizeSlider extends StatelessWidget {
  const SizeSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Size',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Text('3 - 18'),
          ],
        ),
        const SliderInFilterDialog(
            startValue: 3, endValue: 18, divisions: 3, calcUnit: ''),
      ],
    );
  }
}
