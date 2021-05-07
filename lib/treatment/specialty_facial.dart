import 'package:flutter/material.dart';

class SpecialtyFacial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Image.asset('assets/treatment/specialty.png',
              height: 200, width: 400),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              'Our specialty facial treatments use the latest technology curated by our team of in-house doctors to deliver effective solutions for your skin concerns.',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/treatment/specialty'),
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(width: 2, color: Colors.brown[300]),
              ),
              child: Text(
                'Specialty Facials',
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
    );
  }
}
