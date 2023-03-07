import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tabbar_provider/screen/pant/provider/pant_provider.dart';

class PantScreen extends StatefulWidget {
  const PantScreen({Key? key}) : super(key: key);

  @override
  State<PantScreen> createState() => _PantScreenState();
}

class _PantScreenState extends State<PantScreen> {
  PantProvider? pantProvider;

  @override
  Widget build(BuildContext context) {
    pantProvider = Provider.of<PantProvider>(context, listen: false);

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
                      pantProvider!.imageList[index],
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
                          "${pantProvider!.nameList[index]}",
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
                          "\$ ${pantProvider!.price2List[index]}",
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
                          "\$ ${pantProvider!.price1List[index]}",
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
