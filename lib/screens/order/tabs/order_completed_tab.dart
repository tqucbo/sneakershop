import 'package:flutter/material.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/order/components/order_completed_card.dart';

class OrderCompletedTab extends StatelessWidget {
  const OrderCompletedTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
          children: List.generate(
        products.length,
        (index) => OrderCompleteCard(
            title: products[index].title,
            image: products[index].image,
            price: products[index].price,
            time: 'Today'),
      )),
    );
  }
}
