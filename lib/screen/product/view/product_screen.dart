import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabbar_provider/screen/product/provider/product_provider.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  ProductProvider? productProvider;

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of<ProductProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(
              top: 5,
              right: 5,
              left: 5,
            ),
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.black12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Image.asset(
                      productProvider!.imageList[index],
                      height: 120,
                      width: 120,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                      right: 20,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "${productProvider!.nameList[index]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black38,
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$ ${productProvider!.price2List[index]}",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "\$ ${productProvider!.price1List[index]}",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.red,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 30,
                          width: 95,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(
                              color: Colors.black38,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Buy now",
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(
                                Icons.trending_up,
                                size: 15,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
