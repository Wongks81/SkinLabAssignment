import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class PromoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CarouselSlider(
        items: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/homepage/main.png'),
            ),
            // child: Text('iOS'),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: TextButton(
                  onPressed: () {},
                  child: Image.asset('assets/homepage/promo1.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () {},
              child: Image.asset('assets/homepage/promo2.png'),
            ),
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: 1.1,
        ),
      ),
    );
  }
}
