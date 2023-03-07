import 'package:flutter/material.dart';

class PantProvider extends ChangeNotifier {
  List imageList = [
    "assets/images/pant/1.png",
    "assets/images/pant/2.png",
    "assets/images/pant/3.png",
    "assets/images/pant/4.png",
  ];
  List nameList = [
    "Slim Fit Formal Trousers",
    "Slim Casual Pants",
    "Straight Casual Trousers",
    "Regular Fit Lycra Pant"
  ];
  List price1List = [
    "499.49",
    "599.49",
    "629.49",
    "799.49",
  ];
  List price2List = [
    "599.49",
    "699.49",
    "799.49",
    "899.49",
  ];
}
