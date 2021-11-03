import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderPage extends StatefulWidget {
  @override
  _CarouselSliderPageState createState() => _CarouselSliderPageState();
}

class _CarouselSliderPageState extends State<CarouselSliderPage> {
  List imgList = [
    'assets/images/burger.jpg',
    'assets/images/chicken.jpg',
    'assets/images/pizza.jpg',
    'assets/images/plao.jpg',
    'assets/images/stylo.png',
    'assets/images/foodpanda.jpg',
    'assets/images/careem.png',
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Column(
            children: [
              Container(

                child: CarouselSlider(

                  options: CarouselOptions(

                    autoPlay: true,
                    onPageChanged: (value,_) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                  ),
                  items: imgList
                      .map(
                        (url) => Container(
                          child: Image.asset(
                            url,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: bottomWidgets(),
              ),
            ],
          ),

        ],
      ),
    );
  }

  List<Widget> bottomWidgets() {
    List<Widget> widget = [];
    for (int i = 0; i < imgList.length; i++) {
      widget.add(
        Container(
          width: 10.0,
          height: 10.0,
          margin: EdgeInsets.symmetric(horizontal: 3.0,vertical: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentIndex ? Colors.red : Colors.red[200],
          ),
        ),
      );
    }
    return widget;
  }
}
