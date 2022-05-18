import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/sidebar.dart';
import 'package:onlineshop/screens/home/components/side_bar_item.dart';

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
          )),
    );
  }
}
