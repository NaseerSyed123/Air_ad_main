import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/home.dart';
import 'package:air_ad/screens/ubl/models/offerAtmModel.dart';
import 'package:air_ad/screens/ubl/offer_atm_detail.dart';

import 'get_offer.dart';

class OfferDetail extends StatefulWidget {
  @override
  _OfferDetailState createState() => _OfferDetailState();
}

class _OfferDetailState extends State<OfferDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  color: Colors.green[200],
                  width: MediaQuery.of(context).size.width,
                  height: 230,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/careem_banner.jpg'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GetOffer()));
                        },
                        child: Row(
                          children: [
                            Image(
                                width: 20,
                                height: 20,
                                image: AssetImage(
                                    'assets/images/careem_icon.png')),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Careem',
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'Comfortaa'),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '40% off on Careem Now',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey[600],
                            fontFamily: 'Comfortaa'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.grey[400],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              'Expire in 1 month',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Comfortaa'),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 30,
                            padding: EdgeInsets.symmetric(vertical: 3),
                            child: RaisedButton(
                              color: Colors.grey[400],
                              onPressed: () {},
                              child: Text(
                                'Available Online',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Comfortaa'),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Terms',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontFamily: 'Comfortaa'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Max Cap PKR 250'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Max transaction 5 times'),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Terms & condition Apply.'),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Available On',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 20,
                              fontFamily: 'Comfortaa'),
                        ),
                      ),
                      SizedBox(
                        height: 150,
                        child: ListView.builder(
                            itemCount: dummyAtmList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              OfferAtmDetailS()));
                                },
                                child: offerAtmContainer(
                                    title: dummyAtmList[index].titileText,
                                    imgPath: dummyAtmList[index].imagePath),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Found anything wrong in the data? Help us to\nimprove it...',
                              style: TextStyle(
                                  color: Colors.grey, fontFamily: 'Comfortaa'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color(0xffd9534f),
                                  ),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              child: FlatButton(
                                color: Colors.grey[300],
                                onPressed: () {},
                                child: Text(
                                  'Hello Now',
                                  style: TextStyle(
                                    color: Color(0xffd9534f),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 5,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black.withOpacity(0.5)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget offerAtmContainer({String title, String imgPath}) {
    return Container(
        width: 120,
        color: Colors.white,
        padding: EdgeInsets.only(right: 10, top: 10),
        child: Column(
          children: [
            Image(image: AssetImage(imgPath)),
            SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: TextStyle(color: Colors.grey),
            )
          ],
        ));
  }
}
