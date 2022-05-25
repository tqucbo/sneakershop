import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/welcome_screen_data.dart';
import 'package:onlineshop/screens/home/home_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                (_currentPage + 1).toString(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                '/' + welcomeScreenData.length.toString(),
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const HomeScreen(),
                ),
              );
            },
            child: Text(
              'Skip',
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: primaryColor,
                  ),
            ),
          )
        ],
      ),
    );
  }
}
