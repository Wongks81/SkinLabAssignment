import 'package:assignment/about/about.dart';
import 'package:assignment/homepage/homepage.dart';
import 'package:assignment/prices/prices.dart';
import 'package:assignment/treatment/pages/back.dart';
import 'package:assignment/treatment/pages/essential.dart';
import 'package:assignment/treatment/pages/eye.dart';
import 'package:assignment/treatment/pages/hair.dart';
import 'package:assignment/treatment/pages/neck.dart';
import 'package:assignment/treatment/pages/signature.dart';
import 'package:flutter/material.dart';

import 'treatment/pages/body.dart';
import 'treatment/pages/combo.dart';
import 'treatment/pages/premium.dart';
import 'treatment/pages/specialty.dart';
import 'treatment/treatment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skin Lab Assignment',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        '/about': (context) => About(),
        '/prices': (context) => Prices(),

        //treatment group
        '/treatment': (context) => Treatment(),
        '/treatment/combo': (context) => Combo(),
        '/treatment/specialty': (context) => Specialty(),
        '/treatment/signature': (context) => Signature(),
        '/treatment/premium': (context) => Premium(),
        '/treatment/essential': (context) => Essential(),
        '/treatment/neck': (context) => Neck(),
        '/treatment/eye': (context) => Eye(),
        '/treatment/body': (context) => Body(),
        '/treatment/back': (context) => Back(),
        '/treatment/hair': (context) => Hair(),
      },
    );
  }
}
