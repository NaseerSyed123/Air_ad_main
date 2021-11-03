import 'package:air_ad/screens/adv/login.dart';
import 'package:air_ad/screens/adv/register_second_step.dart';
import 'package:flutter/material.dart';

import 'bottom_tabbar_screen.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                height: 590,
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
                                          RegisterSecondStep()));
                            }),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'First Name', passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Last Name', passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Email', passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Password', passoredTxt: true),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Confirm Password', passoredTxt: true),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Phone', passoredTxt: true),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Address', passoredTxt: true),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                        //TODO bool applied
                          hinttxt: 'Branding', passoredTxt: true),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35.0),
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
                                          Login()));
                            },
                            splashColor: Colors.white,
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white,
                              fontFamily: 'Comfortaa',
                                fontWeight: FontWeight.w900,
                                letterSpacing: 1
                              ),
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
  //TODO bool veriable
  Widget textFieldContainer({String hinttxt, bool passoredTxt}) {
    return Container(
      height: 40,
      child: TextFormField(
        //TODO bool applied
        obscureText: passoredTxt,
        cursorColor:  Color(0xff8E0c03),
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: TextStyle(
            fontFamily: 'Comfortaa'
          ),
          labelStyle: TextStyle(
            fontFamily: 'Comfortaa'
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Color(0xff8E0c03),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(
              color: Color(0xff8E0c03),
            ),
          ),
        ),
      ),
    );
  }
}
