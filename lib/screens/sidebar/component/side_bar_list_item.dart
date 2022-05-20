import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/sidebar.dart';
import 'package:onlineshop/screens/sidebar/component/side_bar_item.dart';

class SideBarListItem extends StatefulWidget {
  const SideBarListItem({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBarListItem> createState() => _SideBarListItemState();
}

class _SideBarListItemState extends State<SideBarListItem> {
  static int _currentSideBarItemSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        sideBarItems.length,
        (index) => Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: SideBarItem(
              press: () {
                Scaffold.of(context).closeDrawer();
                if (index != _currentSideBarItemSelected) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => sideBarItems[index].route),
                  );
                  _currentSideBarItemSelected = index;
                  setState(() {});
                }
              },
              iconData: sideBarItems[index].iconData,
              text: sideBarItems[index].text,
              isActive: _currentSideBarItemSelected == index ? true : false),
        ),
      ),
    );
  }
}
