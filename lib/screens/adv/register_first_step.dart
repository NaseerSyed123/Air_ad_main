import 'package:air_ad/screens/adv/register_second_step.dart';
import 'package:air_ad/screens/ubl/home.dart';
import 'package:flutter/material.dart';

import 'login.dart';



class RegisterFirstStep extends StatefulWidget {
  @override
  _RegisterFirstStepState createState() => _RegisterFirstStepState();
}

class _RegisterFirstStepState extends State<RegisterFirstStep> {
  int country = 1;

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
                height: 250,
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
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
                                          Home()));
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 45,
                        padding: EdgeInsets.fromLTRB(10, 5, 20, 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                              color: Color(0xff8E0c03),
                              style: BorderStyle.solid,
                              width: 1.0),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            icon: Icon(Icons.keyboard_arrow_down, color: Color(0xff8E0c03),),
                              value: country,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Select Country",
                                  style: TextStyle(
                                    fontFamily: 'Comfortaa'
                                  ),),
                                  value: 1,
                                ),
                                DropdownMenuItem(
                                  child: Text("Pakistan",
                                    style: TextStyle(
                                        fontFamily: 'Comfortaa'
                                    ),
                                  ),
                                  value: 2,
                                ),
                                DropdownMenuItem(child: Text("USA",
                                  style: TextStyle(
                                      fontFamily: 'Comfortaa'
                                  ),
                                ), value: 3),
                                DropdownMenuItem(child: Text("UK",
                                  style: TextStyle(
                                      fontFamily: 'Comfortaa'
                                  ),
                                ), value: 4),
                                DropdownMenuItem(
                                    child: Text("Canada",
                                      style: TextStyle(
                                          fontFamily: 'Comfortaa'
                                      ),
                                    ), value: 5),
                                DropdownMenuItem(
                                    child: Text("Australia",
                                      style: TextStyle(
                                          fontFamily: 'Comfortaa'
                                      ),
                                    ), value: 6),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  country = value;
                                });
                              }),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 55.0),
                        child: Container(
                          height: 40,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff8E0c03),
                              border: Border.all(color: Color(0xff8E0c03),),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegisterSecondStep()));
                            },
                            splashColor: Colors.white,
                            child: Text(
                              'Next',
                              style: TextStyle(color: Colors.white, fontFamily: 'Comfortaa',
                              fontWeight: FontWeight.w900,
                              letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ])),
          ),
        ),
      ),
    );
  }
}
