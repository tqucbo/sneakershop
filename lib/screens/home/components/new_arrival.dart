import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/home/components/product_card.dart';
import 'package:onlineshop/screens/home/components/section_title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: 'New Arrival',
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              products.length,
              (index) => Padding(
                padding: const EdgeInsets.only(
                  right: defaultPadding,
                ),
                child: ProductCard(
                  image: products[index].image,
                  title: products[index].title,
                  price: products[index].price,
                  bgColor: products[index].color,
                  press: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
