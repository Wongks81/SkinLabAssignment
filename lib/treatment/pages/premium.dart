import 'package:assignment/model/treatmentitem.dart';
import 'package:flutter/material.dart';

class Premium extends StatelessWidget {
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
    imageURL: 'assets/treatment/essential.png',
    titleText: 'Pure Milk',
    bodyText:
        'Milk does more than just build strong bones! The Pure Milk Facial uses a gentle Milk Peel with lactic acid derived from milk and fruits to help you achieve clearer, fairer and smoother skin, easily and effectively.',
    duration: '90 minutes',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/AloeVera.png',
    titleText: 'Aloe Vera',
    bodyText:
        'A straightforward no frills facial to moisturise and soothe dry, tired skin. The Aloe Vera Facial is packed with antioxidants and enzymes that possess healing properties, collagen and hyaluronic acid boosting capabilities.',
    duration: '90 mins',
    priceRange: '\$202 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/oatmeal.png',
    titleText: 'Oatmeal',
    bodyText:
        'Did you know that Oatmeal is a natural and gentle exfoliant that has great anti-inflammatory, skin healing and antioxidant properties? Save yours for breakfast and let us help you with our Oatmeal Facial.',
    duration: '90 mins',
    priceRange: '\$169 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/VitaminC.png',
    titleText: 'Vitamin C Infusion',
    bodyText:
        'Even out your skin tone and reduce the appearance of hyperpigmentation with the all-familiar Vitamin C Infusion Facial that defends against free radicals, boosts collagen production and reduces brown spots.',
    duration: '90 mins',
    priceRange: '\$288 NETT',
    remarks: '50% off first trial*, 1-for-1 first trial*',
  ));

  myList.add(TreatmentItem(
    imageURL: 'assets/treatment/customized.png',
    titleText: 'Customised',
    bodyText:
        'If you don’t know what skin type you have – fret not. Our consultants are trained by our in-house doctors to perform a customised facial that recognises your skin type and needs.',
    duration: '90 mins',
    priceRange: '\$169 NETT',
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
