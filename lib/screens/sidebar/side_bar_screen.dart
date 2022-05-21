import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/sidebar.dart';
import 'package:onlineshop/screens/sidebar/component/avatar_and_my_name.dart';
import 'package:onlineshop/screens/sidebar/component/side_bar_item.dart';
import 'package:onlineshop/screens/sidebar/component/side_bar_list_item.dart';

class SideBar extends StatefulWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
          color: bgColor,
          child: Column(
            children: const [
              AvatarAndMyName(),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SideBarListItem(),
                ),
              ),
            ],
          )),
    );
  }
}
