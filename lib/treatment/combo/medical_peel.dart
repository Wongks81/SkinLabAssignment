import 'package:flutter/material.dart';

class MedicalPeel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.yellow[100],
      child: Column(
        children: [
          Image.asset('assets/treatment/combo.png', height: 200, width: 400),
          Container(
            child: Text(
              'Signature Medical Peel & I2PL',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown[200]),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              'Brighten and achieve glass skin with this dynamic duo backed by doctors - the combination of medical-grade chemical peels and advanced intense pulsed light technology.',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          Divider(
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time),
                    SizedBox(width: 5),
                    Text('120 minutes'),
                    SizedBox(width: 30),
                    Icon(Icons.loyalty),
                    SizedBox(width: 5),
                    Text('\$482 to \$514 NETT'),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.grade),
                    SizedBox(width: 5),
                    Text('50% off first trial*, 1-for-1 first trial*'),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      side: BorderSide(width: 2, color: Colors.brown[300]),
                    ),
                    child: Text(
                      'BOOK NOW',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.brown[300],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
