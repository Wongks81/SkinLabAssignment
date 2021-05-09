import 'package:assignment/shop/categories_dropdown.dart';
import 'package:assignment/shop/shoplist.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        title: Image.asset('assets/homepage/skinlablogo128.png',
            fit: BoxFit.contain),
        backgroundColor: Colors.yellow[50],
      ),
      body: ListView(
        children: [
          // title bar
          Container(
            color: Colors.yellow[100],
            padding: EdgeInsets.all(15),
            child: Text(
              'FORMULATED BY DOCTORS\nCREATED FOR YOU',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.brown[300],
              ),
            ),
          ),
          Container(
              color: Colors.yellow[200],
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              child: CategoriesDropDown()),
        ],
      ),
    );
  }
}
