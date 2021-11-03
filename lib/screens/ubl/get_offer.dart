import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/offer_detail.dart';
import 'package:air_ad/screens/ubl/feeb_back_form.dart';

class GetOffer extends StatefulWidget {
  @override
  _GetOfferState createState() => _GetOfferState();
}

class _GetOfferState extends State<GetOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  child: Image(
                      height: 200,
                      image: AssetImage('assets/images/careem.png')),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Careem',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                        fontFamily: 'Comfortaa'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "The regions's favourit car-booking app. We're all about simplyfing peo...",
                        style: TextStyle(color: Colors.grey,
                        fontFamily: 'Comfortaa'
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5)),
                                color: Colors.green[800]),
                            child: Text(
                              '4.3',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.history_toggle_off,
                                color:Color(0xffd9534f),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Online',
                                style: TextStyle(color: Color(0xffd9534f),),
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        elevation: 3,
                        child: IconButton(
                          icon: Icon(
                            Icons.phone,
                            color: Color(0xffd9534f),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Text(
                          'Our Offers',
                          style: TextStyle(color: Colors.grey[500], fontSize: 20, fontFamily: 'Comfortaa',fontWeight: FontWeight.w900),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pop(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OfferDetail()));
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          // margin: EdgeInsets.all(10),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "40% off on Careem Now",
                                      style: TextStyle(
                                          color: Colors.grey[500],
                                          fontFamily: 'Comfortaa',
                                          fontSize: 17),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                          color: Color(0xffd9534f),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 6, vertical: 8),
                                      child: Text(
                                        "40%",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-debit.png'),
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-master.jpg'),
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-silver.jpg'),
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-wiz.jpg'),
                                      atmCardsContainer(
                                          atmImage: 'assets/images/01.jpg'),
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-master.jpg'),
                                      atmCardsContainer(
                                          atmImage:
                                              'assets/images/ubl-debit.png'),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 5),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    atmCardsContainer(
                                        atmImage: 'assets/images/ubl-wiz.jpg'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    atmCardsContainer(
                                        atmImage:
                                            'assets/images/ubl-silver.jpg'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    atmCardsContainer(
                                        atmImage:
                                            'assets/images/ubl-master.jpg'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    atmCardsContainer(
                                        atmImage:
                                            'assets/images/ubl-debit.png'),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Text(
                                        'Express in 9 month',
                                        style: TextStyle(fontSize: 12, fontFamily: 'Comfortaa'),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 5),
                                      decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5))),
                                      child: Text(
                                        'Terms applied',
                                        style: TextStyle(fontSize: 12, fontFamily: 'Comfortaa'),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Text(
                                    'Available on 3 branches',
                                    style: TextStyle(fontSize: 12,fontFamily: 'Comfortaa'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Reviews',
                        style: TextStyle(color: Colors.grey[500], fontSize: 20,fontFamily: 'Comfortaa', fontWeight: FontWeight.w900),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                                color: Colors.green[400],
                              ),
                              child: Text(
                                '2.2',
                                style: TextStyle(color: Colors.white),
                              )),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Based on 26 reviews on Peekabo Guru',
                          style: TextStyle(
                            fontFamily: 'Comfortaa'
                          ),),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffd9534f),),
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        width: MediaQuery.of(context).size.width,
                        child: FlatButton(
                          child: Text(
                            'See All Reviews',
                            style: TextStyle(
                                color: Color(0xffd9534f), fontSize: 17),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Photos',
                        style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 20,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 110,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                width: 90,
                                margin: EdgeInsets.all(5),
                                child: Image(
                                  image: AssetImage('assets/images/plao.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Visite Online',
                                  style: TextStyle(
                                      color: Color(0xffd9534f), fontSize: 20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Color(0xffd9534f),),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3))),
                                  child: FlatButton(
                                    color: Colors.grey[300],
                                    onPressed: () {},
                                    child: Text(
                                      'Check Now',
                                      style: TextStyle(color: Color(0xffd9534f),
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 1
                                      ),

                                    ),
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              Icons.all_out,
                              color: Color(0xffd9534f),
                              size: 45,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0),
                        child: Text(
                          'Connect With Careem',
                          style: TextStyle(color: Colors.grey[500], fontSize: 20, fontWeight: FontWeight.w900, fontFamily: 'Comfortaa'),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 80,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            socialContainer(
                                icon: Icons.face_retouching_natural),
                            SizedBox(
                              width: 5,
                            ),
                            socialContainer(icon: Icons.share),
                            SizedBox(
                              width: 5,
                            ),
                            socialContainer(icon: Icons.disc_full_outlined),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FeedBackForm()));
                        },
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Found anything wrong in the data? Help us to\nimprove it...',
                                style: TextStyle(color: Colors.grey,fontFamily: 'Comfortaa'),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffd9534f),),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(3))),
                                child: FlatButton(
                                  color: Colors.grey[300],
                                  onPressed: () {},
                                  child: Text(
                                    'Hello Now',
                                    style: TextStyle(color: Color(0xffd9534f),
                                    letterSpacing: 1),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 30,
            left: 10,
            child: Container(
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.black.withOpacity(0.5)),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => OfferDetail()));
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget atmCardsContainer({String atmImage}) {
    return Container(
      height: 25,
      child: Image(
        image: AssetImage(atmImage),
      ),
    );
  }

  Widget socialContainer({IconData icon}) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffd9534f),),
        shape: BoxShape.circle,
      ),
      child: Icon(
        icon,
        color: Color(0xffd9534f),
      ),
    );
  }
}
