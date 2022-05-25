import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class NextButton extends StatelessWidget {
  final VoidCallback press;
  const NextButton({
    Key? key,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Center(
        child: Material(
          color: primaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(
              defaultBorderRadius,
            ),
          ),
          child: InkWell(
            borderRadius: const BorderRadius.all(
              Radius.circular(defaultBorderRadius),
            ),
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                height: 25,
                child: Center(
                  child: Text(
                    'Next',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
