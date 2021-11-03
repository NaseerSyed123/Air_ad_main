import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:air_app/screens/ubl/bottom_sheets/home_bottom_sheet.dart';

import '../home.dart';

class HomeBottomSheet extends StatefulWidget {
  @override
  _HomeBottomSheetState createState() => _HomeBottomSheetState();
}

class _HomeBottomSheetState extends State<HomeBottomSheet> {
  //TODO bool
  bool showBottomSheet = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      //TODO bool condition
      bottomSheet: showBottomSheet
          ? BottomSheet(
              onClosing: () {},
              builder: (BuildContext ctx) => SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      color: Colors.grey[200],
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black.withOpacity(0.5)),
                            child: IconButton(
                              onPressed: (){
                                Navigator.pop(context, MaterialPageRoute(builder: (context) => Home()));
                              },
                              icon: Icon(
                                Icons.arrow_back_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Search the nearby places & offers\nin your city',
                            style: TextStyle(
                                fontSize: 20, color: Colors.grey[500]),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            width: MediaQuery.of(context).size.width,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(5),
                                hintText: 'Search your city here',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Popular Cities',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 20),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 150,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return (Container(
                                    width: 160,
                                    margin: EdgeInsets.only(right: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                'assets/images/pizza.jpg')),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          'Pizza',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Text(
                                          'Pakistan',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    ),
                                  ));
                                }),
                          ),
                          Text(
                            'Countries',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardContainer(
                            titleText: 'Pakistan',
                            detailText: '510 cities'
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardContainer(
                              titleText: 'UAE',
                              detailText: '500 cities'
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardContainer(
                              titleText: 'USA',
                              detailText: '200 cities'
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          cardContainer(
                              titleText: 'UK',
                              detailText: '100 cities'
                          ),
                          SizedBox(
                            height: 10,
                          ),

                        ],
                      ),
                    ),
                  ))
          : null,
    );
  }

  Widget cardContainer({String titleText, String detailText}) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  detailText,
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
            Text(
              '>',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
