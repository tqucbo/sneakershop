import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/icon_with_background.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  static bool isSelected1 = true;
  static bool isSelected2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: AppBar(
        title: Text(
          'Setting',
          style: Theme.of(context).textTheme.headline6,
        ),
        leading: const SideBarMenuButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            ListTile(
              leading: const IconWithBackground(iconData: IconlyBold.message),
              title: const Text('Email support'),
              trailing: const Icon(IconlyLight.arrowRight2),
              onTap: () {},
            ),
            ListTile(
              leading:
                  const IconWithBackground(iconData: IconlyBold.infoCircle),
              title: const Text('FAQ'),
              trailing: const Icon(IconlyLight.arrowRight2),
              onTap: () {},
            ),
            ListTile(
              leading:
                  const IconWithBackground(iconData: IconlyBold.notification),
              title: const Text('Notification | On / Off'),
              trailing: Switch(
                value: isSelected1,
                onChanged: (value) {
                  isSelected1 = value;
                  setState(() {});
                },
                activeColor: primaryColor,
              ),
            ),
            ListTile(
              leading:
                  const IconWithBackground(iconData: IconlyBold.notification),
              title: const Text('Update | On / Off'),
              trailing: Switch(
                value: isSelected2,
                onChanged: (value) {
                  isSelected2 = value;
                  setState(() {});
                },
                activeColor: primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
