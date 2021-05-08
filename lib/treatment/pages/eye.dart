import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Eye extends StatelessWidget {
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
    imageURL: 'assets/treatment/eye.png',
    titleText: 'Brightening Peel & Gemstone Detox',
    bodyText:
        'Rejuvenate tired eyes and give them a fresh look with this combination of Brightening Peel using AHA/BHA Peels to slough away dead skin cells and Gemstone Detox using warm basalt stones to improve blood circulation.',
    duration: '50 minutes',
    priceRange: '\$212 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/BrighteningPeel.png',
    titleText: 'Brightening Peel & CSP RF',
    bodyText:
        'Give your eyes a lift with this combination of Brightening Peel using AHA/BHA peels to slough away dead skin cells and CSP RF to reduce the puffiness around the eyes.',
    duration: '60 mins',
    priceRange: '\$244 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/guasha.png',
    titleText: 'Gua Sha',
    bodyText:
        'Combining traditional Chinese Gua Sha techniques with a modern understanding of facial anatomy and lymphatic pathways, this East-meets-West eye treatment reduces water retention and inflammation.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/OxyFirming.png',
    titleText: 'CSP RF',
    bodyText:
        'The OxyBright Facial (featuring OxyGeneo® technology) is a patented and clinically proven treatment that gives skin incredible skin nourishment and oxygenation, for smoother and younger looking skin.',
    duration: '50 mins',
    priceRange: '\$268 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/Collagen.png',
    titleText: 'Collagen',
    bodyText:
        'Make the best first impression with youthful-looking eyes. The Collagen Eye Treatment ensures the skin around your eyes are well hydrated and moisturised, which helps to reduce fine lines around the eyes.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/ParaffinDetox.png',
    titleText: 'Paraffin Detox',
    bodyText:
        'De-puff your puffy eyes. The Paraffin Detox Eye Treatment involves a light massage in directions that follow the structure of the lymphatic system,to remove fluid accumulation in the eye area',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/BrighteningPeel.png',
    titleText: 'Brightening Peel',
    bodyText:
        'Say goodbye to tired-looking eyes. Using our customised blend of safe AHA/BHA peels, dead skin cells are effectively sloughed away with our Brightening Peel to reveal younger-looking brighter skin.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/GemstoneDetox.png',
    titleText: 'Gemstone Detox',
    bodyText:
        'The Gemstone Detox Eye Treatment uses warm basalt stones to massage and improve blood circulation around your eyes, stripping away the toxins and the stress from them.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/3rdgenrf.png',
    titleText: '3rd Gen RF',
    bodyText:
        'Using TriPollar Radio Frequency, an innovative, proprietary 3rd generation Radio Frequency technology, the 3rd Gen RF delivers immediate visible eye lifting effects with the first treatment with no downtime.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/csprf.png',
    titleText: 'CSP RF',
    bodyText:
        'CSP RF is a non-invasive treatment for reducing puffy and droopy eyes with results visible after just 30mins of the first session - perfect for that special dinner date later in the evening.',
    duration: '50 mins',
    priceRange: '\$105 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/UltrasoundRelief.png',
    titleText: 'Ultrasound Relief',
    bodyText:
        'Reverse the first signs of ageing in our eyes. This ultrasound eye treatment provides a dual benefit for the eyes – increasing skin cell turnover while boosting product absorption.',
    duration: '50 mins',
    priceRange: '\$212 NETT',
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
