import 'package:flutter/material.dart';

class LumenisDetail extends StatefulWidget {
  @override
  _LumenisDetailState createState() => _LumenisDetailState();
}

class _LumenisDetailState extends State<LumenisDetail> {
  //List<bool> _isOpen = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[100],
      appBar: new AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        title: Image.asset('assets/homepage/skinlablogo128.png',
            fit: BoxFit.contain),
        backgroundColor: Colors.yellow[50],
      ),
      body: ListView(
        children: [
          // Header Text
          SizedBox(height: 5),
          Text(
            'LUMENIS M22TM\nLASER FACE TREATMENT',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.brown[200],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          // Image Row
          Container(
            child: Image.asset(
              'assets/treatment/specialty.png',
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 2),
            child: Text(
              'Direct from Lumenis, the inventor of IPL, is the FDA-approved M22TM Laser system. It is the gold-standard for IPL photorejuvenation and the treatment of pigmentation, mild to moderate acne, and many more skin concerns.',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(height: 5),
          Container(
            color: Colors.yellow[200],
            child: ExpansionTile(
              title: Text(
                'KEY BENEFITS',
                style: TextStyle(
                  color: Colors.brown[300],
                  fontWeight: FontWeight.bold,
                ),
              ),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Lightens skin discolourations such as sun/age spots, freckles, port-wine stains',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Lightens blemishes',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Improves signs of ageing such as fine lines',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Removes spider veins or broken capillaries',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Evens out skin tone',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        '- Targets and controls mild to moderate acne',
                        style:
                            TextStyle(fontSize: 16, color: Colors.brown[400]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
