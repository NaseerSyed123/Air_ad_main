import 'package:air_ad/screens/adv/Adv_Forget_Password.dart';
import 'package:air_ad/screens/adv/Register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bottom_tabbar_screen.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 330,
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
                                      builder: (context) => Register()));
                            }),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                          //TODO bool condition applying
                          hinttxt: 'User ID #',
                          passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                          //TODO bool condition applying
                          hinttxt: 'Username',
                          passoredTxt: false),
                      SizedBox(
                        height: 10,
                      ),
                      textFieldContainer(
                          //TODO bool condition applying
                          hinttxt: 'Password',
                          passoredTxt: true),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AdvForgetPassword()));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: RichText(
                              text: TextSpan(
                                  text: 'Forget password ? ',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Comfortaa'),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'Reset password',
                                        style: TextStyle(
                                            color: Color(0xff8E0c03),
                                            fontFamily: 'Comfortaa',
                                            fontWeight: FontWeight.w900))
                                  ]),
                            ),
                          ),
                        ),
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
                              border: Border.all(
                                color: Color(0xff8E0c03),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomTabbarScreen()));
                            },
                            splashColor: Colors.white,
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Comfortaa',
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w900),
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
