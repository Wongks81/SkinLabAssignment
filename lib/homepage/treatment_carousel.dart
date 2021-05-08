import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TreatmentCarousel());
}

class TreatmentCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: Colors.yellow[100],
          border: Border.all(color: Colors.brown[200]),
        ),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Our Treatments',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[300],
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ], // 1st row Children
              ),
            ),
            Container(
              child: CarouselSlider(
                items: [
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () =>
                          {Navigator.pushNamed(context, '/treatment')},
                      child: Image.asset('assets/homepage/treatment_face.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child: TextButton(
                          onPressed: () =>
                              {Navigator.pushNamed(context, '/treatment/eye')},
                          child: Image.asset(
                              'assets/homepage/treatment_eyes.png')),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () => {
                        {Navigator.pushNamed(context, '/treatment/neck')},
                      },
                      child: Image.asset('assets/homepage/treatment_neck.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () => {
                        {Navigator.pushNamed(context, '/treatment/body')},
                      },
                      child: Image.asset('assets/homepage/treatment_body.png'),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(0.0),
                    child: TextButton(
                      onPressed: () => {
                        {Navigator.pushNamed(context, '/treatment/hair')},
                      },
                      child: Image.asset('assets/homepage/treatment_hair.png'),
                    ),
                  ),
                ],
                //Slider Container properties
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1.1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
