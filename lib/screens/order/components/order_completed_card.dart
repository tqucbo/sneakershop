import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class OrderCompleteCard extends StatelessWidget {
  final String title, time, image;
  final int price;

  const OrderCompleteCard({
    Key? key,
    required this.title,
    required this.price,
    required this.time,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: defaultPadding, vertical: defaultPadding / 2),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(defaultBorderRadius),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(image),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: Theme.of(context).textTheme.bodyText2),
                const SizedBox(height: 5),
                Text('\$' + price.toString(),
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold,
                        ))
              ],
            ),
          ),
          const SizedBox(width: 16),
          Text(time, style: Theme.of(context).textTheme.caption),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}
