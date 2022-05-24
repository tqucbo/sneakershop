import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: AppBar(
        leading: const SideBarMenuButton(),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Privacy policy',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: const Padding(
          padding: EdgeInsets.all(defaultPadding),
          child: Text('Privacy policy')),
    );
  }
}
