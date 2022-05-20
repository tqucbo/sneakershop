import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class HeaderOfTheFilterDialog extends StatelessWidget
    implements PreferredSizeWidget {
  const HeaderOfTheFilterDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {},
              child: const SizedBox(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                      color: primaryColor,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Filters',
              style: Theme.of(context).textTheme.headline6,
            ),
            Material(
              color: primaryColor,
              shape: const CircleBorder(),
              child: InkWell(
                customBorder: const CircleBorder(),
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
