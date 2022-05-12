import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class ProductCard extends StatelessWidget {
  final String title, image;
  final Color bgColor;
  final int price;
  final VoidCallback press;

  const ProductCard({
    Key? key,
    required this.title,
    required this.image,
    required this.bgColor,
    required this.price,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 154,
        padding: const EdgeInsets.all(
          defaultPadding / 2,
        ),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(
              defaultBorderRadius,
            ),
          ),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(
                    defaultBorderRadius,
                  ),
                ),
                color: bgColor,
              ),
              child: Image.asset(
                image,
                height: 75,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: defaultPadding / 4,
                ),
                Text(
                  '\$' + price.toString(),
                  style: Theme.of(context).textTheme.subtitle2,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
