import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabbar_provider/screen/cap/view/cap_screen.dart';
import 'package:tabbar_provider/screen/pant/view/pant_screen.dart';
import 'package:tabbar_provider/screen/product/view/product_screen.dart';
import 'package:tabbar_provider/screen/tshirt/view/tshirt_Screen.dart';

class TabbarScreen extends StatefulWidget {
  const TabbarScreen({Key? key}) : super(key: key);

  @override
  State<TabbarScreen> createState() => _TabbarScreenState();
}

class _TabbarScreenState extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            actions: [
              Icon(
                Icons.notifications_none_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 13,
              ),
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
              SizedBox(
                width: 17,
              ),
            ],
          ),
          backgroundColor: Colors.white,
          body: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              TabBar(
                indicatorPadding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 2,
                  bottom: 2,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: Colors.black,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.black,
                ),
                indicatorColor: Colors.black,
                tabs: [
                  Tab(
                    text: "Products",
                  ),
                  Tab(
                    text: "T-Shirt",
                  ),
                  Tab(
                    text: "Pants",
                  ),
                  Tab(
                    text: "Cap",
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    ProductScreen(),
                    TshirtScreen(),
                    PantScreen(),
                    CapScreen(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
