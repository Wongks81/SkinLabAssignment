import 'package:assignment/treatment/combo_facial.dart';
import 'package:assignment/treatment/signature_facial.dart';
import 'package:assignment/treatment/specialty_facial.dart';
import 'package:flutter/material.dart';

class Treatment extends StatelessWidget {
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
          ComboFacial(),
          SpecialtyFacial(),
          SignatureFacial(),
        ],
      ),
    );
  }
}
