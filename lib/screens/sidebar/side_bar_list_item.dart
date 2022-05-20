import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/sidebar.dart';
import 'package:onlineshop/screens/sidebar/avatar_and_my_name.dart';
import 'package:onlineshop/screens/sidebar/side_bar_item.dart';

class SideBarListItem extends StatelessWidget {
  const SideBarListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: bgColor,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const AvatarAndMyName(),
                Column(
                  children: List.generate(
                    sideBarItems.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(defaultPadding / 2),
                      child: SideBarItem(
                          press: () {},
                          iconData: sideBarItems[index].iconData,
                          text: sideBarItems[index].text,
                          isActive: true),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
