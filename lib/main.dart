import 'package:assignment/about/about.dart';
import 'package:assignment/homepage/homepage.dart';
import 'package:assignment/treatment/pages/signature.dart';
import 'package:flutter/material.dart';

import 'treatment/pages/combo.dart';
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
        '/treatment': (context) => Treatment(),
        '/treatment/combo': (context) => Combo(),
        '/treatment/specialty': (context) => Specialty(),
        '/treatment/signature': (context) => Signature(),
      },
    );
  }
}
