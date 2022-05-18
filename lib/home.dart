import 'package:flutter/material.dart';
import 'package:hi/myDrawer.dart';

import 'commerce_home.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var accDetailsTitles = [
    "Name",
    "Email Adddress",
    "Phone",
    "User ID",
    "Date of Birth",
    "Gender"
  ];
  var accDetailsSubTitles = [
    "Cristiano Ronaldo",
    "cristiano_ronaldo07@gmail.com",
    "+92 300 0000000",
    "778687686787",
    "20/2/1897",
    "Male"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("E-Commerce App",
                  style: TextStyle(
                    color: Colors.white,
                  )),
              Icon(Icons.shopping_cart_rounded),
            ],
          )),
        ),
        drawer: MyDrawer(),
        body: Commerce_Home());
  }
}
