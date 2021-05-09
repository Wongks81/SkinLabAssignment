import 'package:assignment/data/treatmentitems.dart';
import 'package:assignment/model/treatmentitem.dart';
import 'package:assignment/shop/categories_dropdown.dart';
import 'package:assignment/shop/sessions_dropdown.dart';
import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  List<TreatmentItem> allList = listSpecialtyTreatment();

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
      body: getWidgets(allList),
    );
  }
}

//get each record in card form
Widget getWidgets(List<TreatmentItem> items) {
  List<Widget> list = [];
  List<String> sessions = [];
  // sessions.add('session1');
  // sessions.add('session2');

  //title bar
  list.add(Container(
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
  ));

// catergories dropdown
  list.add(Container(
      color: Colors.yellow[200],
      alignment: Alignment.center,
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: CategoriesDropDown()));

  //List Row per item
  for (var i = 0; i < items.length; i++) {
    list.add(
      Card(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 10, 0, 10),
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: Image.asset(items[i].imageURL),
              ),
              SizedBox(width: 10),
              // Right side of card
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      items[i].titleText,
                      style: TextStyle(
                        color: Colors.brown[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      items[i].priceRange,
                      style: TextStyle(
                        color: Colors.brown[300],
                      ),
                    ),
                    SessionsDropDown(sessions: items[i].sessions),
                    OutlinedButton(
                      onPressed: () => {},
                      style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: BorderSide(width: 2, color: Colors.brown[300]),
                      ),
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.brown[300],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  return new ListView(
    children: list,
  );
}

//get each dropdown value depending on string supplied
