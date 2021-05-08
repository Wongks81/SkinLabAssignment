import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Neck extends StatelessWidget {
  final List<TreatmentItem> treatList = listTreatment();

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
// can be updated if connected to a DB
List<TreatmentItem> listTreatment() {
  List<TreatmentItem> myList = [];

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/neck.png',
    titleText: 'Electric Firming',
    bodyText:
        'Troubled by a wrinkled neck? Our Electric Firming Neck Treatment uses smart vibration technology to stimulate the acupuncture points of the neck to promote skin metabolism and reduce neck wrinkles.',
    duration: '50 minutes',
    priceRange: '\$193 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/OxyFirming.png',
    titleText: 'OxyFirming',
    bodyText:
        'OxyFirming uses OxyGeneo®, a patented 3-in-1 neck treatment that does 3 effective treatments simultaneously; exfoliation, oxygenation, and deep rejuvenation with the infusion of essential skin revitalising nutrients',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/3rdgenrf.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible neck firming effects with the first treatment with no downtime.',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment to reduce fine lines and loose skin around the neck with results visible after just 30mins of the first session - perfect for that special dinner date later in the evening.',
    duration: '50 mins',
    priceRange: '\$212 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/GoldFirming.png',
    titleText: 'Gold Firming',
    bodyText:
        'After using 3rd Generation radio frequency technology to stimulate collagen formation for reducing fine lines and loose skin around the neck, a luxurious gold mask is lathered on to impart a protective layer against free radicals.',
    duration: '50 mins',
    priceRange: '\$288 NETT',
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
