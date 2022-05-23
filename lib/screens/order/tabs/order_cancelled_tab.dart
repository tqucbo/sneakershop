import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class OrderCancelledTab extends StatelessWidget {
  const OrderCancelledTab({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(defaultPadding / 2),
        child: Text(
          'Orders that are cancelled will appear here.',
        ),
      ),
    );
  }
}
