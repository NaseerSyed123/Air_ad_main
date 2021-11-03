import 'package:air_ad/screens/ubl/home.dart';
import 'package:air_ad/screens/ubl/page_routs/search_places_page_rout.dart';
import 'package:air_ad/screens/ubl/search_places_offers.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/discount_category_detail.dart';
import 'package:air_ad/screens/ubl/models/discountModel.dart';

import 'discount_category_detail.dart';
import 'models/discountModel.dart';

class Discount extends StatefulWidget {
  @override
  _DiscountState createState() => _DiscountState();
}

class _DiscountState extends State<Discount>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//       appBar: AppBar(
// elevation: 0,
//         backgroundColor: Colors.white,
//         // backgroundColor: Color(0xffd9534f),
//         leading: Container(
//           child: Icon(Icons.arrow_back_ios, color: Color(0xffd9534f),),
//
//         ),
//         title: SizedBox(
//           height: 30,
//           child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.4),
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   padding:
//                       EdgeInsets.only(left: 10, top: 3, right: 10, bottom: 2),
//                   margin: EdgeInsets.only(right: 8),
//                   child: Text(
//                     'Fast Food',
//                     style: TextStyle(color: Colors.white, fontSize: 17),
//                   ),
//                 );
//               }),
//         ),
//         actions: [
//           Container(
//
//             child: Icon(Icons.search, color: Color(0xffd9534f),),
//
//           ),
//
//         ],
//       ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 5, top: 30, right: 10, bottom: 2),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffd9534f),
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Home()));
                    }),
                Container(
                  height: 30,
                  width: 248,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          padding: EdgeInsets.only(
                              left: 10, top: 3, right: 10, bottom: 2),
                          margin: EdgeInsets.only(right: 8),
                          child: Text(
                            'Fast Food',
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        );
                      }),
                ),
               Icon(Icons.search, color: Color(0xffd9534f))
              ],
            ),
          ),
          Card(
            elevation: 5,
            child: TabBar(
                labelColor: Colors.grey,
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                indicatorColor: Colors.transparent,
                tabs: [
                  InkWell(
                    onTap: () => tabDiscountSheet(),
                    child: Tab(
                      child: Text(
                        'Discount',
                        style: TextStyle(
                            color: Color(0xffd9534f),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        SearchplacesPageRout(widget: SearchPlacesOffers())),
                    child: Tab(
                      child: Text(
                        'Filter',
                        style: TextStyle(
                            color: Color(0xffd9534f),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1),
                      ),
                    ),
                  ),
                ]),
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: dummyDiscountList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DiscountCategoryDetail()));
                      },
                      child: discountContainer(
                        imgPath: dummyDiscountList[index].imagePath,
                        titleText: dummyDiscountList[index].titleTxt,
                      ),
                    );
                  }))
        ],
      ),
    );
  }

  void tabDiscountSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Color(0xFF737373),
            height: 250,
            child: Container(
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(20),
                      topLeft: const Radius.circular(20))),
              child: Column(
                children: [
                  ListTile(
                    leading: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      elevation: 3,
                      child: IconButton(
                        icon: Icon(
                          Icons.cancel_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    title: Text('List Settings'),
                    trailing: FlatButton(
                      child: Text('RESET'),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.grey[200],
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Text("Sort by"),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      bottomSheetIconContainer(
                          icon: Icons.ac_unit, titleText: 'Trending'),
                      bottomSheetIconContainer(
                          icon: Icons.animation, titleText: 'Discount'),
                      bottomSheetIconContainer(
                          icon: Icons.upload_outlined, titleText: 'Nearby'),
                      bottomSheetIconContainer(
                          icon: Icons.star_border, titleText: 'Rating'),
                      bottomSheetIconContainer(
                          icon: Icons.history_toggle_off,
                          titleText: 'Alphabetical'),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                        color: Colors.blue,
                        child: Text(
                          'Apply Filter',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {}),
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget bottomSheetIconContainer({String titleText, IconData icon}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(color: Colors.blue)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: Colors.blue,
          ),
          Text(
            titleText,
            style: TextStyle(color: Colors.blue, fontSize: 10),
          )
        ],
      ),
    );
  }

  Widget discountContainer({String imgPath, String titleText}) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      margin: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Image(
              image: AssetImage(imgPath),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        titleText,
                        style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'Comfortaa'),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                        decoration: BoxDecoration(
                            color: Color(0xffd9534f),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          '40%',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          '3.7',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                        decoration: BoxDecoration(
                            color: Colors.grey[500],
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Text(
                          'Closed',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Comfortaa',
                              letterSpacing: 1),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
