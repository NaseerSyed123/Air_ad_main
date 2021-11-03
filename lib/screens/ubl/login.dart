import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/services.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueAccent,
      // appBar: AppBar(
      //   backgroundColor: Colors.blueAccent,
      //   actions: <Widget>[
      //     IconButton(
      //       icon: Icon(
      //         Icons.search,
      //         color: Colors.white,
      //         size: 30,
      //       ),
      //       onPressed: () {},
      //     ),
      //     SizedBox(
      //       width: 10,
      //     )
      //   ],
      //   elevation: 0.0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image(
                width: 130,
                height: 130,
                image: AssetImage('assets/images/logo main.png')),
            SizedBox(
              height: 30,
            ),
            Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    textFieldContainer(
                        password: false,
                        icon: Icons.email,
                        email: 'Enter Email:',
                        inputType: TextInputType.emailAddress),
                    SizedBox(
                      height: 10,
                    ),
                    textFieldContainer(
                        password: true,
                        icon: Icons.vpn_key,
                        email: 'Password:',
                        inputType: TextInputType.emailAddress),
                    Align(
                        alignment: Alignment.centerRight,
                        child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'Not have an account? Please Register first',
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xffd9534f)),
                            ))),
                    SizedBox(
                      height: 40,
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (Home())));
                        },
                        child: buttonLoginContainer()),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buttonLoginContainer() {
    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          color: Color(0xffd9534f),
          borderRadius: BorderRadius.all(Radius.circular(40))),
      child: Center(
          child: Text(
        'Login',
        style: TextStyle(
          fontFamily: 'Comfortaa',

            fontSize: 20,
            color: Colors.white,

            letterSpacing: 2,
            fontWeight: FontWeight.w900),
      )),
    );
  }

  Widget textFieldContainer(
      {String email, bool password, TextInputType inputType, IconData icon}) {
    return Container(
      height: 50,
      child: TextFormField(
        keyboardType: inputType,
        cursorColor: Color(0xffd9534f),
        obscureText: password,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5),
          prefixIcon: Icon(
            icon,
            color: Color(0xffd9534f),
          ),
          hintText: email,
          hintStyle: TextStyle(
            color: Colors.grey,
            letterSpacing: 1,
          ),
          labelStyle: TextStyle(color: Colors.black, letterSpacing: 1),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Color(0xffd9534f))),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              borderSide: BorderSide(color: Color(0xffd9534f))),
        ),
      ),
    );
  }
}
