import 'package:flutter/material.dart';


import 'package:air_ad/screens/ubl/discount.dart';
import 'package:air_ad/screens/ubl/models/category_model.dart';
import 'package:air_ad/screens/ubl/models/offerModel.dart';
import 'package:air_ad/screens/ubl/offer_detail.dart';

class Sliver extends StatefulWidget {
  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    String notif = 'notification';

    double _height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        scrollDirection: Axis.vertical,
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: MySliverAppBar(
                expandedHeight: 200,
                // img: "assets/images/01.jpg",
                title: "My Sliver",
                id: "id"),
            pinned: true,
          ),

          /// Container for description to Sort and Refine
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                height: 130,
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[300]))),
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        margin: EdgeInsets.only(right: 5),
                        width: 84,
                        height: 140,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.dialpad_sharp,
                              color: Colors.blue,
                            ),
                            Text(
                              'Max\nDiscount',
                              style: TextStyle(color: Colors.blue),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.blue[800],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          width: MediaQuery.of(context).size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Aas Paas',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    'Augmented reality',
                                    style: TextStyle(color: Colors.blue[200]),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3))),
                                    child: FlatButton(
                                      color: Colors.blue[800],
                                      onPressed: () {},
                                      child: Text(
                                        'Check Now',
                                        style: TextStyle(color: Colors.white),
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
                        Text(
                          'Category',
                          style:
                              TextStyle(color: Colors.grey[600], fontSize: 20),
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
                                              builder: (context) =>
                                                  Discount()));
                                    },
                                    child: Container(
                                      width: 100,
                                      margin: EdgeInsets.all(5),
                                      color: Colors.blue,
                                    ),
                                  );
                                })),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'New Offers',
                              style: TextStyle(
                                  color: Colors.grey[600], fontSize: 20),
                            ),
                            Text('See all'),
                          ],
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
                                            builder: (context) =>
                                                OfferDetail()));
                                  },
                                  // child: offerContainer(
                                  //     titleText: dummyOfferList[index].titleTxt,
                                  //     subTitleText:
                                  //     dummyOfferList[index].subTitleTxt,
                                  //     imgPath: dummyOfferList[index].imagePath),
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
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        child: Image(
                                          height: 100,
                                          image: AssetImage(
                                              'assets/images/01.jpg'),
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
          )),
        ],
      )),
    );
  }
}

class buttonCustom extends StatelessWidget {
  String txt;
  Color color;
  GestureTapCallback ontap;

  buttonCustom({this.txt, this.color, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 45.0,
        width: 300.0,
        decoration: BoxDecoration(
          color: color,
        ),
        child: Center(
            child: Text(
          txt,
          style: TextStyle(color: Colors.white, fontFamily: "Sans"),
        )),
      ),
    );
  }
}

// My Sliver Header

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

   String title, id;

  MySliverAppBar({@required this.expandedHeight, this.title, this.id});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.clip,
      children: [
        Container(
          height: 50.0,
          width: double.infinity,
          color: Colors.white,
        ),
        Opacity(
          opacity: (1 - shrinkOffset / expandedHeight),
          child: Hero(
            transitionOnUserGestures: true,
            tag: 'hero-tag-${id}',
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black.withOpacity(0.4)),
                          child: IconButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Sliver()));
                            },
                            icon: Icon(Icons.keyboard_arrow_left),
                            // Icons.keyboard_arrow_left,
                            // size: 35,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 50,
                            ),
                            Text('Islamabad'),
                            IconButton(
                                icon: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  // Navigator.push(
                                  //     context,
                                  //     SearchplacesPageRout(
                                  //         widget: SearchPlacesOffers()));
                                })
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  width: MediaQuery.of(context).size.width,
                  height: 40,
                  decoration: BoxDecoration(
                      border:
                      Border(bottom: BorderSide(color: Colors.grey[200]))),
                  child: TextField(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => SearchPlaceScreen()));
                    },
                    textInputAction: TextInputAction.next,
                    style: TextStyle(color: Colors.grey,fontSize: 10),
                    cursorColor: Colors.grey,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(Icons.person, color: Colors.grey,size: 20,),
                      hintText: 'Enter User ID #',
                      hintStyle: TextStyle(color: Colors.grey,

                          fontSize: 10),
                      contentPadding:
                      EdgeInsets.symmetric(horizontal: 10,),
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40.0),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Icon(Icons.arrow_back),
                    ))),
            Align(
              alignment: Alignment.topCenter,
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: "Gotik",
                  fontWeight: FontWeight.w700,
                  fontSize: (expandedHeight / 40) - (shrinkOffset / 40) + 18,
                ),
              ),
            ),
            SizedBox(
              width: 36.0,
            )
          ],
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
