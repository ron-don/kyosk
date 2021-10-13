import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class OffersCarousel extends StatefulWidget {
  const OffersCarousel({Key? key}) : super(key: key);

  @override
  _OffersCarouselState createState() => _OffersCarouselState();
}

class _OffersCarouselState extends State<OffersCarousel> {
  int _current = 0;
  List imgList = [
    'lib/images/offers_img4.png',
    'lib/images/offers_img5.jpeg',
    'lib/images/offers_img6.jpeg',
    'lib/images/offers_img7.png',
    'lib/images/offers_img8.jpeg',
    'lib/images/offers_img10.jpeg'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListTile(
            title: Text("Great Offers!!!", style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text("Commodities on offer", style: TextStyle(fontSize: 15.0, fontStyle: FontStyle.italic),),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 230,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 4),
              autoPlayAnimationDuration: Duration(milliseconds: 2700),
              // pauseAutoPlayOnTouch: Duration(seconds: 7),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent[100],
                    ),
                    child: Image.asset(imgUrl, fit: BoxFit.fill),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: map<Widget>(imgList, (index, url) {
              return Container(
                width: 7.0,
                height: 7.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index
                        ? Colors.deepOrangeAccent[100]
                        : Colors.black),
              );
            }),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
