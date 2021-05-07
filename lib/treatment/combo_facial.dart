import 'package:flutter/material.dart';

class ComboFacial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Image.asset('assets/treatment/combo.png', height: 200, width: 400),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              'Two is always better than one, don’t let anyone tell you otherwise. Reap the combined benefits of two treatments with one combo treatment!',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () => {
                Navigator.pushNamed(context, '/treatment/combo'),
              },
              style: OutlinedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                side: BorderSide(width: 2, color: Colors.brown[300]),
              ),
              child: Text(
                'Combo Facials',
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
