import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/models/product.dart';
import 'package:onlineshop/screens/details/details_screen.dart';
import 'package:onlineshop/screens/home/components/popular.dart';
import 'package:onlineshop/screens/home/components/product_card.dart';
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
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Favourite',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(defaultPadding / 2),
            child: ProductCard(
              title: products[index].title,
              image: products[index].image,
              bgColor: products[index].color,
              price: products[index].price,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                      product: products[index],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
