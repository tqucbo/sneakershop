import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SideBar {
  final String text;
  final IconData iconData;

  SideBar({
    required this.text,
    required this.iconData,
  });
}

List<SideBar> sideBarItems = [
  SideBar(
    text: 'Home',
    iconData: IconlyBold.home,
  ),
  SideBar(
    text: 'Wallet',
    iconData: IconlyBold.wallet,
  ),
  SideBar(
    text: 'My order',
    iconData: IconlyBold.bag2,
  ),
  SideBar(
    text: 'About us',
    iconData: IconlyBold.document,
  ),
  SideBar(
    text: 'Privacy policy',
    iconData: IconlyBold.lock,
  ),
  SideBar(
    text: 'Setting',
    iconData: IconlyBold.setting,
  ),
  SideBar(
    text: 'Log out',
    iconData: IconlyBold.logout,
  ),
];
