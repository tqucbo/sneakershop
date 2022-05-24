import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideBarScreen(),
        appBar: AppBar(
          title: Text(
            'About us',
            style: Theme.of(context).textTheme.headline6,
          ),
          leading: const SideBarMenuButton(),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(defaultPadding / 2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Tran Quoc Bao - 3118410027\n'),
              Text(
                'Google Developer Student Club - Sai Gon University (GDSC SGU)\n',
                textAlign: TextAlign.center,
              ),
              Text(
                'The developer of the original project : The Flutter Way',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ));
  }
}
