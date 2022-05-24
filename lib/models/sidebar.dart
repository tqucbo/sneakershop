import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlineshop/about_us/about_us_screen.dart';
import 'package:onlineshop/privacy_policy/privacy_policy_screen.dart';
import 'package:onlineshop/screens/favourite/favourite_screen.dart';
import 'package:onlineshop/screens/home/home_screen.dart';
import 'package:onlineshop/screens/home/search_screen.dart';
import 'package:onlineshop/screens/order/order_screen.dart';
import 'package:onlineshop/screens/wallet/wallet_screen.dart';
import 'package:onlineshop/setting/setting_screen.dart';

class SideBar {
  final String text;
  final IconData iconData;
  final Widget route;

  SideBar({
    required this.route,
    required this.text,
    required this.iconData,
  });
}

List<SideBar> sideBarItems = [
  SideBar(
    text: 'Home',
    iconData: IconlyBold.home,
    route: const HomeScreen(),
  ),
  SideBar(
    text: 'Search',
    iconData: IconlyBold.search,
    route: const SearchPage(searchValue: null),
  ),
  SideBar(
    text: 'Wallet',
    iconData: IconlyBold.wallet,
    route: const WalletScreen(),
  ),
  SideBar(
    text: 'My order',
    iconData: IconlyBold.bag2,
    route: const OrderScreen(),
  ),
  SideBar(
    text: 'Favourite',
    iconData: IconlyBold.heart,
    route: const FavouriteScreen(),
  ),
  SideBar(
    text: 'About us',
    iconData: IconlyBold.document,
    route: const AboutUsScreen(),
  ),
  SideBar(
    text: 'Privacy policy',
    iconData: IconlyBold.lock,
    route: const PrivacyPolicyScreen(),
  ),
  SideBar(
    text: 'Setting',
    iconData: IconlyBold.setting,
    route: const SettingScreen(),
  ),
  SideBar(
    text: 'Log out',
    iconData: IconlyBold.logout,
    route: const AboutUsScreen(),
  ),
];
