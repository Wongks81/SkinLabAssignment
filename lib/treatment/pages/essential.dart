import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Essential extends StatelessWidget {
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
    imageURL: 'assets/treatment/premium.png',
    titleText: 'Laser Lift',
    bodyText:
        'This powerhouse of a facial combines 3 key technologies to boost hydration levels, collagen production and skin cell regeneration - Low Level Laser Therapy, Galvanic Current and Lymphatic Drainage.',
    duration: '120 minutes',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/Oxygeno.png',
    titleText: 'OxyGeneo® Carbon Intense',
    bodyText:
        'The OxyGeneo® Carbon Intense Facial is a patented and clinically proven treatment that purifies and soothes oily skin, while improving its texture and appearance.',
    duration: '120 mins',
    priceRange: '\$589 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/DermaRoller.png',
    titleText: 'Derma Roller',
    bodyText:
        'The Derma Roller Facial gently rolls sterile fine needles across the treatment area to create micro-wounds - stimulating collagen and elastin production that help with fine lines, wrinkles and mild acne scars.',
    duration: '90 mins',
    priceRange: '\$375 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/gold.png',
    titleText: 'Gold',
    bodyText:
        'True to its name, gold has anti-inflammatory properties that is very valuable for many skin concerns. This rare, inert metal can reduce skin redness, and protect against free radicals that lead to wrinkles and sun damage.',
    duration: '120 mins',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/PumpkinGlow.png',
    titleText: 'Pumpkin Glow',
    bodyText:
        'Say hello to radiant skin with our combination of an advanced exfoliating system and the nourishing capabilities of the humble pumpkin to give you a skin that’s brighter, smoothened, lifted - the perfect glow your skin deserves.',
    duration: '90 mins',
    priceRange: '\$460 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/PepTidePerfect.png',
    titleText: 'Peptide Perfect',
    bodyText:
        'This ultimate skin rejuvenation and whitening facial with 50X the power of vitamin C that blocks melanin formation and harmful oxidation, instantly brightening, hydrating, and evening out skin tone.',
    duration: '120 mins',
    priceRange: '\$426 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/MicroMassage.png',
    titleText: 'Local Dynamic Micro-massage',
    bodyText:
        'Using dual-frequency ultrasound technology, Local Dynamic Micro-massage (LDM) effectively activates fibroblasts to boost collagen and hyaluronic acid regeneration, instantly lifting and firming the skin.',
    duration: '90 mins',
    priceRange: '\$398 NETT',
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
