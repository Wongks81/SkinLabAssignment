import 'package:flutter/material.dart';

class ResearchPromise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow[100],
        border: Border.all(color: Colors.brown[200]),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Our Research,\nOur Promise',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.brown[300],
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              OutlinedButton(
                onPressed: () => {
                  Navigator.pushNamed(context, '/about'),
                },
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  side: BorderSide(width: 2, color: Colors.brown[300]),
                ),
                child: Text(
                  'Learn More',
                  style: TextStyle(
                    color: Colors.brown[300],
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ], // 1st row Children
      ),
    );
  }
}
