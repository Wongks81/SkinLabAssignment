import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Signature extends StatelessWidget {
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
    titleText: 'Signature Medical Peel',
    bodyText:
        'Our most popular treatment - the Signature Medical Peel developed by our in-house doctors uses a combination of AHAs/BHAs for the treatment of ageing skin, acne/blemish-prone skin, as well as mild pigmentation.',
    duration: '30 to 90 minutes',
    priceRange: '\$169 to \$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aquapeel.png',
    titleText: 'Aqua Peel',
    bodyText:
        'A pain-free skin rejuvenation facial using the advanced Aqua ST System with the simultaneous action of a gentle mechanical exfoliation as well as an infusion of specially designed topical solutions.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/diamondpeel.png',
    titleText: 'Diamond Peel',
    bodyText:
        'To help your skin shine, the Diamond Peel uses an abrasive diamond tip that gently loosens the dead cells, dirt, and debris while the wand’s suction function vacuums them away simultaneously.',
    duration: '90 mins',
    priceRange: '\$299 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/signature.png',
    titleText: 'Intense Hydrating H.A.',
    bodyText:
        'Featuring hyaluronic acid (H.A.) products developed by doctors, natural aloe and cucumber extracts, the facial helps to moderate skin sebum production and reduce inflammation for maximum hydration of dry skin conditions.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/guasha.png',
    titleText: 'Gua Sha',
    bodyText:
        'Combining traditional Chinese Gua Sha techniques with a modern understanding of facial anatomy and lymphatic pathways, this East-meets-West facial gives you visibly impressive lifting and contouring results.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/omegalight.png',
    titleText: 'Omega Light',
    bodyText:
        'Red, blue, yellow, green - harness the power of medical-grade LED lights in our Omega Light Facial to tackle skin issues from acne, scarring and pigmentation to dull, ageing and sensitive skin.',
    duration: '90 mins',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/apple.png',
    titleText: 'Ultrasound Apple Stem Cell',
    bodyText:
        'Discover the miraculous Uttwiler Spätlauber Swiss Apples! The apple stem cells harvested and cultured in advanced laboratories repairs damaged skin tissues and activates skin stem cell regeneration.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/aroma.png',
    titleText: 'Aroma Gemstone',
    bodyText:
        'The Aroma Gemstone Facial uses warm basalt stones to massage and stimulate the circulatory system for a full-face detox while relieving the stress and tension in your face at the same time.',
    duration: '90 mins',
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
