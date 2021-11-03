import 'package:air_ad/screens/adv/bottom_tabbar_screen.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50].withOpacity(0.4),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 15,
            color: Colors.white,
            child: Container(
                height: 490,
                width: MediaQuery.of(context).size.width,
                child: Stack(children: [
                  ListView(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Color(0xff8E0c03),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomTabbarScreen()));
                            }),
                      ),
                      listTileContainer(
                        titleText: 'Phone Verification'
                      ),
                      Divider(),
                      listTileContainer(
                          titleText: 'Location Verification'
                      ),
                      Divider(),
                      listTileContainer(
                          titleText: 'In Person Verification'
                      ),
                      Divider(),
                      listTileContainer(
                          titleText: 'Email Verification'
                      ),
                      Divider(),
                      listTileContainer(
                          titleText: 'Address Verification'
                      ),
                      Divider(),
                    ],
                  ),
                ])),
          ),
        ),
      ),
    );
  }

  Widget listTileContainer({String titleText}) {
    return ListTile(
      title: Text(titleText,
      style: TextStyle(
        fontFamily: 'Comfortaa'
      ),
      ),
      trailing: Container(
        height: 40,
        decoration: BoxDecoration(
            color: Color(0xff8E0c03),
            border: Border.all(color: Color(0xff8E0c03)),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: FlatButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BottomTabbarScreen()));
          },
          splashColor: Colors.white,
          child: Text(
            'Verification',
            style: TextStyle(
                fontFamily: 'Comfortaa',
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
