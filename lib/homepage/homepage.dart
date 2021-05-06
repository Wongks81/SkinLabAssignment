import 'package:assignment/common/top_dropdownmenu.dart';
import 'package:flutter/material.dart';
import 'package:assignment/homepage/promo_carousel.dart';
import 'package:assignment/homepage/research_promise.dart';
import 'package:assignment/homepage/treatment_carousel.dart';
import 'package:assignment/common/bottom_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/homepage/skinlablogo128.png',
            fit: BoxFit.contain),
        backgroundColor: Colors.yellow[50],
        actions: [
          TopDropDown(),
        ],
      ),
      body: Column(
        children: [
          //Row 1 Container for Carousel
          PromoCarousel(),
          ResearchPromise(),
          TreatmentCarousel(),
        ],
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.yellow[50],
        ),
        child: BottomBar(),
      ),
    );
  }
}
