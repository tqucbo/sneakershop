import 'package:flutter/material.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class FavouriteScreen extends StatefulWidget {
  final Widget? drawerButton;

  const FavouriteScreen({Key? key, this.drawerButton}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: AppBar(
        leading: const SideBarMenuButton(),
      ),
    );
  }
}
