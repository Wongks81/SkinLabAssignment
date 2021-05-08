import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PricesCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CarouselSlider(
        items: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/1.png'),
            ),
            // child: Text('iOS'),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: TextButton(
                  onPressed: () {}, child: Image.asset('assets/prices/2.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/3.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/4.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/5.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/6.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/7.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/8.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/9.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/10.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/11.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/12.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/13.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/prices/14.png'),
            ),
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(
          height: 600,
          autoPlay: true,
          viewportFraction: 1.1,
        ),
      ),
    );
  }
}
