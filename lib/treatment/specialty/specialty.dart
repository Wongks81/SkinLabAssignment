import 'package:assignment/block/treatment.dart';
import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Specialty extends StatelessWidget {
  List<TreatmentItem> treatList = listTreatment();

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
      body: getCardWidgets(treatList),
    );
  }
}

// records of the treatments
List<TreatmentItem> listTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/specialty.png',
    titleText: 'Lumenis M22TM Laser',
    bodyText:
        'Hailing from Lumenis, the inventor of IPL, is the FDA-approved M22 Laser system. It is the gold-standard for IPL photorejuvenation and the treatment of pigmentation, mild to moderate acne, and many more skin concerns.',
    duration: '60 mins',
    priceRange: '\$380 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  return myList;
}

Widget getCardWidgets(List<TreatmentItem> items) {
  List<Widget> list = [];
  for (var i = 0; i < items.length; i++) {
    list.add(Card(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Image.asset(items[i].imageURL, height: 200, width: 400),
          Container(
            child: Text(
              items[i].titleText,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[200]),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              items[i].bodyText,
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5),
                    Text(items[i].duration),
                    SizedBox(width: 30),
                    Icon(Icons.loyalty),
                    SizedBox(width: 5),
                    Text(items[i].priceRange),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.grade),
                    SizedBox(width: 5),
                    Text(items[i].remarks),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(width: 2, color: Colors.brown[300]),
                    ),
                    child: Text(
                      'BOOK NOW',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
  return new ListView(
    children: list,
  );
}
