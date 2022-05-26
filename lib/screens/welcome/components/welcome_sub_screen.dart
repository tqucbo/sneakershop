import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/shared_dart_files/button_type_1.dart';

class WelcomeSubScreen extends StatelessWidget {
  final String title, subtitle, image, textButton;
  final VoidCallback press;

  const WelcomeSubScreen({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.press,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyText2,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 16,
          ),
          ButtonType1(
            press: press,
            text: textButton,
          ),
        ],
      ),
    );
  }
}
