import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/home/components/home_screen_app_bar.dart';
import 'package:onlineshop/screens/home/components/search_bar_with_filter_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class SearchPage extends StatelessWidget {
  final String searchValue;

  const SearchPage({Key? key, required this.searchValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: const HomeScreenAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              children: [
                const SearchBarWithFilterButton(),
                Text('Search results showing for value : \'' +
                    searchValue +
                    '\''),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
