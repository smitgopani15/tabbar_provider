import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabbar_provider/screen/cap/provider/cap_provider.dart';
import 'package:tabbar_provider/screen/cap/view/cap_screen.dart';
import 'package:tabbar_provider/screen/pant/provider/pant_provider.dart';
import 'package:tabbar_provider/screen/pant/view/pant_screen.dart';
import 'package:tabbar_provider/screen/product/provider/product_provider.dart';
import 'package:tabbar_provider/screen/product/view/product_screen.dart';
import 'package:tabbar_provider/screen/tabbar/view/tabbar_screen.dart';
import 'package:tabbar_provider/screen/tshirt/provider/tshirt_provider.dart';
import 'package:tabbar_provider/screen/tshirt/view/tshirt_Screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TshirtProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PantProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CapProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => TabbarScreen(),
          'product_screen': (context) => ProductScreen(),
          'tshirt_screen': (context) => TshirtScreen(),
          'pant_screen': (context) => PantScreen(),
          'cap_screen': (context) => CapScreen(),
        },
      ),
    ),
  );
}
