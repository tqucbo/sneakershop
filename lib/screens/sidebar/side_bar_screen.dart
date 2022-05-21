import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/sidebar/components/avatar_and_my_name.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_list_item.dart';

class SideBarScreen extends StatefulWidget {
  const SideBarScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBarScreen> createState() => _SideBarScreenState();
}

class _SideBarScreenState extends State<SideBarScreen> {
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
