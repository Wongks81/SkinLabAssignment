import 'package:flutter/material.dart';
import 'package:assignment/model/treatmentcategories.dart';

class Treatment extends StatelessWidget {
  final List<TreatmentCategories> treatList = listTreatmentCat();

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
      body: getCardWidgets(treatList, context),
    );
  }
}

// records of the treatments
List<TreatmentCategories> listTreatmentCat() {
  List<TreatmentCategories> myList = [];

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/combo.png',
      titleText: 'Combo Facials',
      bodyText:
          'Two is always better than one, don’t let anyone tell you otherwise. Reap the combined benefits of two treatments with one combo treatment!',
      locationURL: '/treatment/combo'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/specialty.png',
      titleText: 'Specialty Facials',
      bodyText:
          'Our specialty facial treatments use the latest technology curated by our team of in-house doctors to deliver effective solutions for your skin concerns.',
      locationURL: '/treatment/specialty'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/signature.png',
      titleText: 'Signature Facials',
      bodyText:
          'Developed by our in-house team of doctors, our signature treatments caters to many types of skin concerns — from acne control to skin lifting, leave it to us!',
      locationURL: '/treatment/signature'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/premium.png',
      titleText: 'Premium Facials',
      bodyText:
          'Spoil yourself (or your skin in this case) for once. Indulge in our premium facials to help you achieve that radiant glow!',
      locationURL: '/treatment/premium'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/essential.png',
      titleText: 'Essential Facials',
      bodyText:
          'Building good skin requires a strong foundation. Discover the essentials recommended by doctors for your skin. ',
      locationURL: '/treatment/essential'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/neck.png',
      titleText: 'Neck Treatments',
      bodyText:
          'Up to your neck with double chin, loose skin & wrinkles? Let us help you catch a breather with our neck treatments.',
      locationURL: '/treatment/neck'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/eye.png',
      titleText: 'Eye Treatments',
      bodyText:
          'Take care of your eyes - they are the stars that shine on your face. Reduce dark circles, droopy & puffy eyes with our eye treatments.',
      locationURL: '/treatment/eye'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/body.png',
      titleText: 'Body Treatments',
      bodyText:
          'Take care of your eyes - they are the stars that shine on your face. Reduce dark circles, droopy & puffy eyes with our eye treatments.',
      locationURL: '/treatment/body'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/back.png',
      titleText: 'Back Treatments',
      bodyText:
          'Take care of your eyes - they are the stars that shine on your face. Reduce dark circles, droopy & puffy eyes with our eye treatments.',
      locationURL: '/treatment/back'));

  myList.add(TreatmentCategories(
      imageURL: 'assets/treatment/hair.png',
      titleText: 'Hair Removal',
      bodyText:
          'Hairy issues? Let us help you resolve them with treatments like I2PL Hair Removal.',
      locationURL: '/treatment/hair'));
  return myList;
}

Widget getCardWidgets(List<TreatmentCategories> items, BuildContext context) {
  List<Widget> list = [];
  for (var i = 0; i < items.length; i++) {
    list.add(
      Card(
        color: Colors.yellow[100],
        child: Column(
          children: [
            Image.asset(items[i].imageURL, height: 200, width: 400),
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
            Container(
              child: OutlinedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, items[i].locationURL),
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(width: 2, color: Colors.brown[300]),
                ),
                child: Text(
                  items[i].titleText,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.brown[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  return new ListView(
    children: list,
  );
}
