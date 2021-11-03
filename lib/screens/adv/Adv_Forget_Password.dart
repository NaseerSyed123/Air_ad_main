import 'package:air_ad/screens/adv/Register.dart';
import 'package:air_ad/screens/adv/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_tabbar_screen.dart';

class AdvForgetPassword extends StatefulWidget {
  @override
  _AdvForgetPasswordState createState() => _AdvForgetPasswordState();
}

class _AdvForgetPasswordState extends State<AdvForgetPassword> {
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
                height: 270,
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
                                          Login()));
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // textFieldContainer(
                      //   //TODO bool condition applying
                      //     hinttxt: 'User ID #', passoredTxt: false),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      textFieldContainer(
                        //TODO bool condition applying
                          hinttxt: 'Enter email or Phone #', passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),


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
                              'Reset Password',
                              style: TextStyle(color: Colors.white,
                                  fontFamily: 'Comfortaa',
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900
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
  //TODO bool veriable declared
  Widget textFieldContainer({String hinttxt, bool passoredTxt}) {
    return Container(
      height: 40,
      child: TextFormField(
        //TODO bool value applying
        obscureText: passoredTxt,
        cursorColor: Color(0xff8E0c03),
        decoration: InputDecoration(
          hintText: hinttxt,
          hintStyle: TextStyle(fontFamily: 'Comfortaa'),
          labelStyle: TextStyle(fontFamily: 'Comfortaa'),
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
