import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/welcome_screen_data.dart';
import 'package:onlineshop/screens/home/home_screen.dart';
import 'package:onlineshop/screens/login/login_screen.dart';
import 'package:onlineshop/screens/welcome/components/welcome_sub_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static int _currentWelcomeSubScreen = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
                (_currentWelcomeSubScreen + 1).toString(),
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
      body: PageView.builder(
        controller: _pageController,
        itemCount: welcomeScreenData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: WelcomeSubScreen(
              title: welcomeScreenData[index].title,
              subtitle: welcomeScreenData[index].subtitle,
              image: welcomeScreenData[index].image,
              textButton:
                  _currentWelcomeSubScreen == welcomeScreenData.length - 1
                      ? 'Let\'s go'
                      : 'Next',
              press: () {
                if (_currentWelcomeSubScreen == welcomeScreenData.length - 1) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                  _currentWelcomeSubScreen = 0;
                } else {
                  int _newSubScreen = _currentWelcomeSubScreen + 1;
                  _pageController.animateToPage(
                    _newSubScreen,
                    duration: const Duration(milliseconds: 350),
                    curve: Curves.easeIn,
                  );
                }
                setState(() {});
              },
            ),
          );
        },
        onPageChanged: (v) {
          _currentWelcomeSubScreen = v;
          setState(() {});
        },
      ),
    );
  }
}
