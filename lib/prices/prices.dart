import 'package:assignment/prices/prices_carousel.dart';
import 'package:flutter/material.dart';

class Prices extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        title: Image.asset('assets/homepage/skinlablogo128.png',
            fit: BoxFit.contain),
        backgroundColor: Colors.yellow[50],
        actions: [
          //Not working
          //PdfDownload(),
        ],
      ),
      body: Column(
        children: [PricesCarousel()],
      ),
    );
  }
}
