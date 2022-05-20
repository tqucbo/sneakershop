import 'package:flutter/material.dart';
import 'package:onlineshop/screens/home/dialog/components/silder_in_filter_dialog.dart';

class PricingSlider extends StatelessWidget {
  const PricingSlider({
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
              'Pricing',
              style: Theme.of(context).textTheme.headline6,
            ),
            const Text('\$0 - \$500'),
          ],
        ),
        const SliderInFilterDialog(
            startValue: 0, endValue: 500, divisions: 5, calcUnit: '\$'),
      ],
    );
  }
}
