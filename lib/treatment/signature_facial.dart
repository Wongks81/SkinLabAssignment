import 'package:flutter/material.dart';

class SignatureFacial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Image.asset('assets/treatment/signature.png',
              height: 200, width: 400),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              'Developed by our in-house team of doctors, our signature treatments caters to many types of skin concerns — from acne control to skin lifting, leave it to us!',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/treatment/signature'),
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(width: 2, color: Colors.brown[300]),
              ),
              child: Text(
                'Signature Facials',
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
