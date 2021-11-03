import 'package:air_ad/screens/ubl/drawer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:air_ad/screens/ubl/models/category_model.dart';
import 'package:air_ad/screens/ubl/models/offerModel.dart';
import 'package:air_ad/screens/ubl//offer_detail.dart';
import 'package:air_ad/screens/ubl/search_place_screen.dart';
import 'package:air_ad/screens/ubl/search_places_offers.dart';

import 'discount.dart';
import 'page_routs/search_places_page_rout.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: DrawerLayout(),

      ),

      //
      floatingActionButton: FloatingActionButton(
        backgroundColor:  Color(0xffd9534f),
        onPressed: () {},
        child: Icon(Icons.all_out),
      ),
      body: CustomScrollView(

          slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Color(0xffd9534f),
          leading: IconButton(
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
          title: Row(
            children: [
              SizedBox(
                width: 50,
              ),
              Text('Islamabad',

              style: TextStyle(
                fontFamily: 'Comfortaa'
              ),),
              IconButton(
                  icon: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        SearchplacesPageRout(widget: SearchPlacesOffers()));
                  })
            ],
          ),
          automaticallyImplyLeading: false,
          pinned: true,
          expandedHeight: 130,
          floating: true,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Container(

              padding: EdgeInsets.symmetric(horizontal: 5),
              height: 35,
              child: TextField(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchPlaceScreen()));
                },
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.grey, fontSize: 10),
                cursorColor:  Color(0xffd9534f),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xffd9534f),
                    size: 20,
                  ),
                  hintText: 'Enter User ID #',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 10, fontFamily: 'Comfortaa'),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  border: new OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(40.0),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SliverList(
            delegate: SliverChildListDelegate(
          [
            Container(
              height: 130,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border(bottom: BorderSide(color: Colors.grey[300]))),
              child: ListView.builder(
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xffd9534f),
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.only(right: 5),
                      width: 84,
                      height: 140,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.dialpad_sharp,
                            color: Color(0xffd9534f),
                          ),
                          Text(
                            'Max\nDiscount',
                            style: TextStyle(
                                fontFamily: 'Comfortaa',
                                color: Color(0xffd9534f)),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                color: Colors.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                            color: Color(0xffd9534f),
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
                                  'Aas Paas',
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa',

                                      letterSpacing: 1,
                                      color: Colors.white, fontSize: 20),
                                ),
                                Text(
                                  'Augmented reality',
                                  style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Comfortaa'),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 40,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.white),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(3))),
                                  child: FlatButton(
                                    color: Colors.white,
                                    onPressed: () {},
                                    child: Text(
                                      'Check Now',
                                      style: TextStyle(
                                        fontFamily: 'Comfortaa',
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffd9534f),),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              Icons.all_out,
                              color: Colors.white,
                              size: 45,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Text(
                          'Category',
                          style: TextStyle(color: Colors.grey[600], fontFamily: 'Comfortaa', fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      SizedBox(
                          height: 145,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dummyCategoryList.length,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Discount()));
                                  },
                                  child: categoryContainer(
                                      titleText: dummyCategoryList[index].title,
                                      imgPath:
                                          dummyCategoryList[index].imagePath),
                                );
                              })),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Offers',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 20, fontFamily: 'Comfortaa'),
                            ),
                            Text('See all',style: TextStyle(

                                color:Color(0xffd9534f),
                            fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w700
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 185,
                        child: ListView.builder(
                            itemCount: dummyOfferList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => OfferDetail()));
                                },
                                child: offerContainer(
                                    titleText: dummyOfferList[index].titleTxt,
                                    subTitleText:
                                        dummyOfferList[index].subTitleTxt,
                                    imgPath: dummyOfferList[index].imagePath),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Cards',
                            style: TextStyle(
                                color: Colors.grey[600], fontSize: 20),
                          ),
                          Text('See all'),
                        ],
                      ),
                      SizedBox(
                        height: 145,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 145,
                                    margin: EdgeInsets.only(right: 10),
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      child: Image(
                                        height: 100,
                                        image:
                                            AssetImage('assets/images/01.jpg'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    'UBL Card',
                                    style: TextStyle(color: Colors.grey[600]),
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    'Master Card',
                                    style: TextStyle(color: Colors.grey[500]),
                                  )
                                ],
                              );
                            }),
                      )
                    ]))
          ],
        ))
      ]),
    );
  }

  Widget offerContainer(
      {String titleText, String subTitleText, String imgPath}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110,
          margin: EdgeInsets.only(
            right: 15,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              height: 145,
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          titleText,
          style: TextStyle(color: Colors.grey[600], fontFamily: 'Comfortaa'),
        ),
        SizedBox(
          height: 2,
        ),
        Text(
          subTitleText,
          style: TextStyle(color: Colors.grey[500],fontFamily: 'Comfortaa'),
        )
      ],
    );
  }

  Widget categoryContainer({String imgPath, String titleText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 110,
          margin: EdgeInsets.only(right: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: Image(
              height: 125,
              image: AssetImage(imgPath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          titleText,
          style: TextStyle(color: Colors.grey[600]),
        )
      ],
    );
  }
}
