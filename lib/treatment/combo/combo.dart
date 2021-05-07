import 'package:assignment/treatment/combo/aquapeel.dart';
import 'package:assignment/treatment/combo/diamondpeel.dart';
import 'package:assignment/treatment/combo/medical_peel.dart';
import 'package:assignment/treatment/combo/milkpeel.dart';
import 'package:assignment/treatment/combo/oatmeal.dart';
import 'package:flutter/material.dart';

class Combo extends StatelessWidget {
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
          MedicalPeel(),
          AquaPeel(),
          MilkPeel(),
          DiamondPeel(),
          OatMeal(),
        ],
      ),
    );
  }
}
