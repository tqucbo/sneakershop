import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';

class AvatarAndMyName extends StatelessWidget {
  const AvatarAndMyName({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(defaultPadding / 2),
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      child: Image.asset(
                        'assets/images/avatar.png',
                      ),
                      radius: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Tran Quoc Bao',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text('Sai Gon University',
                            style: Theme.of(context).textTheme.bodyText2),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
