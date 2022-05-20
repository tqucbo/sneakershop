import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideBarMenuButton extends StatelessWidget {
  const SideBarMenuButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: SvgPicture.asset(
            'assets/icons/menu.svg',
            height: 13,
            width: 13,
          ),
        );
      },
    );
  }
}
