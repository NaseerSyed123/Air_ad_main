import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class AdvImageScreen extends StatefulWidget {
  @override
  _AdvImageScreenState createState() => _AdvImageScreenState();
}

class _AdvImageScreenState extends State<AdvImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 537,
      width: double.infinity,
      child: Carousel(
        dotSize: 4,
        dotSpacing: 15,
        dotColor: Colors.red[200],
        dotBgColor: Color(0xff8E0c03),
        images: [
          Image.asset(
            'assets/images/bata.png',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'assets/images/burger.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/pizza.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/plao.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/foodpanda.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/careem_icon.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/chughtai.png',
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
