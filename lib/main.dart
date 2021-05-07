import 'package:assignment/about/about.dart';
import 'package:assignment/homepage/homepage.dart';
import 'package:assignment/treatment/combo/combo.dart';
import 'package:assignment/treatment/specialty/specialty.dart';
import 'package:flutter/material.dart';

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
      },
    );
  }
}
