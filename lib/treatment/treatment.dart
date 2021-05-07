import 'package:flutter/material.dart';

class Treatment extends StatelessWidget {
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
      ),
      body: Column(
        children: [
          Card(
            color: Colors.yellow[100],
            child: Column(
              children: [
                Image.asset('assets/treatment/combo.png',
                    height: 200, width: 400),
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
          ),
        ],
      ),
    );
  }
}
