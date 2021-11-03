import 'package:air_ad/screens/ubl/End_User/User_Tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/discount.dart';

import 'End_User/B3_Cart_Screen.dart';
import 'carousel_slider.dart';

class DiscountCategoryDetail extends StatefulWidget {
  @override
  _DiscountCategoryDetailState createState() => _DiscountCategoryDetailState();
}

class _DiscountCategoryDetailState extends State<DiscountCategoryDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Discount Detail',
      //   style: TextStyle(
      //     fontFamily: "Comfortaa"
      //   ),
      //   ),
      // centerTitle: true,
      // backgroundColor: Color(0xffd9534f),
      //   leading: IconButton(
      //     onPressed: (){
      //       Navigator.pop(context, MaterialPageRoute(builder: (context) => Discount()));
      //     },
      //     icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
      //   ),
      // ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Container(
            //     height: 225,
            //     width: double.infinity,
            //     child: CarouselSliderPage()),
            Container(
              height: 90,
              color: Color(0xffd9534f),
              padding:
                  EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Discount()));
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          'Pizza Hutt',
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      Text(
                        'F - 10 Markaz, Islamabad',
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          padding:
                              EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: Text(
                            'Open Now',
                            style: TextStyle(
                                fontSize: 8,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffd9534f)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            SizedBox(
              height: 300,
              child: UserTabbar(),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                  child: Text(
                'Air List',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1),
              )),
            ),
            SizedBox(height: 330, child: B3CartScreen()),
            // Container(
            //   height: 200,
            //   width: MediaQuery.of(context).size.width,
            //   color: Colors.red,
            // )
            Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text('Reviews',
            style: TextStyle(
              color: Colors.grey,
              letterSpacing: 1,
              fontSize: 20,

            ),
            ),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 15,),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.lightGreenAccent,
                  child: Text('3.3'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Based on 36 reviews')
              ],
            ),

            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Center(child: Text('See all Reviews',
              style: TextStyle(
                color: Colors.blue,
                letterSpacing: 1,
                fontSize: 15
              ),
              )),
            ),
            )
          ],
        ),
      ),
    );
  }

  Widget socialContainer({IconData icon}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xffd9534f),
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Color(0xffd9534f),
      ),
    );
  }

  Widget iconContainer({IconData icon}) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      elevation: 3,
      child: IconButton(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
      ),
    );
  }

  Widget cardContainer(
      {String titleText,
      String percentageText,
      String cartText1,
      String cardText2}) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      // margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  titleText,
                  style: TextStyle(color: Colors.grey[500], fontSize: 17),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[700],
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                  child: Text(
                    percentageText,
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: Container(
                  height: 30,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/01.jpg')),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        cartText1,
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      )
                    ],
                  ),
                )),
                SizedBox(
                  width: 5,
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.all(5),
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[400]),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Image(image: AssetImage('assets/images/01.jpg')),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        cardText2,
                        style: TextStyle(color: Colors.grey[500], fontSize: 12),
                      )
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Express in 9 month',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    'Terms applied',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Text(
                'Available on 3 branches',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
