import 'package:flutter/material.dart';
import 'package:onlineshop/constants.dart';
import 'package:onlineshop/screens/order/tabs/order_cancelled_tab.dart';
import 'package:onlineshop/screens/order/tabs/order_completed_tab.dart';
import 'package:onlineshop/screens/sidebar/components/side_bar_menu_button.dart';
import 'package:onlineshop/screens/sidebar/side_bar_screen.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: const SideBarScreen(),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const SideBarMenuButton(),
          title: Text(
            'My order',
            style: Theme.of(context).textTheme.headline6,
          ),
          bottom: const TabBar(
            indicatorColor: primaryColor,
            tabs: [
              Tab(
                child: Text('Completed'),
              ),
              Tab(
                child: Text(
                  'Cancelled',
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            OrderCompletedTab(),
            OrderCancelledTab(),
          ],
        ),
      ),
    );
  }
}
