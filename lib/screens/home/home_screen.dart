import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/categories_bar.dart';
import 'package:onlineshop/screens/home/components/home_screen_app_bar.dart';
import 'package:onlineshop/screens/home/components/new_arrival.dart';
import 'package:onlineshop/screens/home/components/popular.dart';
import 'package:onlineshop/screens/home/components/search_bar_with_filter_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBarScreen(),
      appBar: const HomeScreenAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            children: [
              Column(
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
            ],
          ),
        ),
      ),
    );
  }
}
