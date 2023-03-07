import 'package:flutter/material.dart';

class TshirtProvider extends ChangeNotifier {
  List imageList = [
    "assets/images/tshirt/1.png",
    "assets/images/tshirt/2.png",
    "assets/images/tshirt/3.png",
    "assets/images/tshirt/4.png",
  ];
  List nameList = [
    "Regular Fit Polo T-Shirt",
    "Super Combed Cotton",
    "Oversized Half Sleeve",
    "Round Round Neck"
  ];
  List price1List = [
    "399.49",
    "499.49",
    "599.49",
    "999.49",
  ];
  List price2List = [
    "499.49",
    "599.49",
    "699.49",
    "999.49",
  ];
}
