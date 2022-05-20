import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
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
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 150,
              height: 25,
              child: Center(
                child: Text(
                  'Apply',
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
    );
  }
}
