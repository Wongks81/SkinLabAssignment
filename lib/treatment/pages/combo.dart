import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Combo extends StatelessWidget {
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
    imageURL: 'assets/treatment/combo.png',
    titleText: 'Signature Medical Peel & I2PL',
    bodyText:
        'Brighten and achieve glass skin with this dynamic duo backed by doctors - the combination of medical-grade chemical peels and advanced intense pulsed light technology.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aquapeel.png',
    titleText: 'Aqua Peel & I2PL',
    bodyText:
        'Pairing our Aqua Peel Facial using the patented Aqua ST peeling system that exfoliates and infuses topical solution simultaneously, together with advanced intense pulsed light technology for an all-rounded skin revival.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/milkpeel.png',
    titleText: 'Milk Peel & I2PL',
    bodyText:
        'Milk and cookies? Try pure, gentle milk enzymes used in combination with advanced intense pulsed light technology to brighten, rejuvenate, and moisturise dull, dry skin.',
    duration: '120 mins',
    priceRange: '\$428 to \$560 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/diamondpeel.png',
    titleText: 'Diamond Peel & I2PL',
    bodyText:
        'The Diamond Peel uses "diamond" tips to mechanically exfoliate dull skin. This facial is combined with advanced intense pulsed light technology to bring the bling to your skin.',
    duration: '120 mins',
    priceRange: '\$482 to \$514 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/oatmeal.png',
    titleText: 'Oatmeal Facial & I2PL',
    bodyText:
        'More than a satisfying breakfast, the calming and soothing benefits of oatmeal are paired with advanced intense pulse light to reduce skin redness and even out skin tone even for sensitive skin conditions.',
    duration: '120 mins',
    priceRange: '\$418 to \$450 NETT',
    whatsappAPI:
        'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0',
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
                    onPressed: () => {
                      launch(items[i].whatsappAPI),
                    },
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
