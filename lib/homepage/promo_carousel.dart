import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PromoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: CarouselSlider(
        items: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () => {
                launch(
                    'https://api.whatsapp.com/send/?phone=6597703610&text&app_absent=0'),
              },
              child: Image.asset('assets/homepage/main.png'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              child: TextButton(
                  // navigate to shop
                  onPressed: () => {
                        Navigator.pushNamed(context, '/shop'),
                      },
                  child: Image.asset('assets/homepage/promo1.png')),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: TextButton(
              onPressed: () => {
                launch(
                    'https://docs.google.com/forms/d/e/1FAIpQLSdpnOr-2IM4aQ9gsAuQPH70tdDqxxa8Rc9yOCh1gpsxM1ssFw/viewform'),
              },
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
