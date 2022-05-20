import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/categories_bar.dart';
import 'package:onlineshop/screens/home/components/new_arrival.dart';
import 'package:onlineshop/screens/home/components/popular.dart';
import 'package:onlineshop/screens/home/components/search_bar_with_filter_button.dart';
import 'package:onlineshop/screens/sidebar/component/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class HomeScreen extends StatelessWidget {
  final Widget? drawerButton;

  const HomeScreen({Key? key, this.drawerButton}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const SideBarMenuButton(),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/Location.svg',
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            Text(
              'GDSC SGU',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/Notification.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore',
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
            ),
            const Text(
              'best Sneakers for you',
              style: TextStyle(fontSize: 18),
            ),
            const SearchBarWithFilterButton(),
            const CategoriesBar(),
            const SizedBox(
              height: defaultPadding / 3,
            ),
            const NewArrival(),
            const Popular(),
          ],
        ),
      ),
    );
  }
}
