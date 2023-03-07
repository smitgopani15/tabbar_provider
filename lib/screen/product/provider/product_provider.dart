import 'package:flutter/foundation.dart';

class ProductProvider extends ChangeNotifier {
  List imageList = [
    "assets/images/product/shoes.png",
    "assets/images/product/goggles.png",
    "assets/images/product/cap.png",
    "assets/images/product/watch.png",
  ];
  List nameList = [
    "Mens Air Winflo",
    "Men's Black Sunglasses",
    "Unisex Mens Caps",
    "Luxury Analogue Watch"
  ];
  List price1List = [
    "499.49",
    "249.99",
    "129.99",
    "3999.49",
  ];
  List price2List = [
    "399.49",
    "199.49",
    "99.49",
    "3599.49",
  ];
}
