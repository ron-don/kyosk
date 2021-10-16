import 'package:flutter/material.dart';
import 'package:kyosk/home/carousels/offers_carousel.dart';
import 'dart:ui';
import 'package:kyosk/home/tiles/foodProducts.dart';
import 'package:kyosk/home/tiles/nonFoodProducts.dart';

class HomeMenuScreen extends StatefulWidget {
  const HomeMenuScreen({Key? key}) : super(key: key);

  @override
  _HomeMenuScreenState createState() => _HomeMenuScreenState();
}

class _HomeMenuScreenState extends State<HomeMenuScreen> {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/images/kiosk_bcgrnd_img.jpeg'),
              fit: BoxFit.fitHeight,
              colorFilter: new ColorFilter.mode(Colors.white.withOpacity(0.1), BlendMode.hardLight),
            ),
          ),
        ),
        //Trending clothes
        Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: Card(
              child: OffersCarousel()
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: Card(
            child: FoodProducts(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 2.0),
          child: Card(
            child: NonFoodProducts(),
          ),
        ),
      ],
    );
  }
}
