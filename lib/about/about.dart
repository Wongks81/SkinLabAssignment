import 'package:assignment/common/top_dropdownmenu.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
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
        actions: [
          TopDropDown(),
        ],
      ),
      body: Column(
        children: [
          Card(
            child: Image.asset('assets/about/ceo.png', height: 300, width: 300),
          ),
          SizedBox(height: 10),
          Card(
            color: Colors.yellow[100],
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'About',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown[700],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Singapore\'s largest medical spa chain offering ' +
                        'medical-grade facials and skincare products. \r\n\r\n' +
                        'Founded in 2006 by Dr. Kelvin Chua, ' +
                        'SkinLab\'s core ethos is in offering result-driven ' +
                        'treatments such as its popular Signature Medical Peel ' +
                        'to the masses. \r\n\r\n' +
                        'SkinLab has since garnered thousands ' +
                        'of online reviews and is fast becoming a go-to beauty ' +
                        'service provider for many.',
                    style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold,
                      //letterSpacing: 1,
                      height: 1.3,
                      color: Colors.brown[700],
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.brown[700], width: 1),
                borderRadius: BorderRadius.circular(4)),
          ),
        ],
      ),
    );
  }
}
