import 'package:air_ad/screens/adv/Register.dart';
import 'package:air_ad/screens/adv/adv_form_screen.dart';
import 'package:air_ad/screens/adv/login.dart';
import 'package:air_ad/screens/adv/register_first_step.dart';
import 'package:air_ad/screens/adv/tabs.dart';
import 'package:air_ad/screens/adv/verification.dart';
import 'package:air_ad/screens/ubl/home.dart';
import 'package:flutter/material.dart';

class Manage extends StatefulWidget {
  @override
  _ManageState createState() => _ManageState();
}

class _ManageState extends State<Manage> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Container(
        width: 270,
        child: Drawer(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xff8E0c03),
                  child: Container(
                    padding: EdgeInsets.only(
                        left: 10, top: 50, right: 10, bottom: 20),
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(3),
                              width: 80,
                              height: 80,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.white, width: 2),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      50,
                                    ),
                                  )),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/images/pizza.jpg'),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Naseer',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Comfortaa'),
                            ),
                            Text(
                              'snaseer.ahsan@gmail.com',
                              style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontFamily: 'Comfortaa'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      ListTile(
                        title: Text(
                          'Profile',
                          style: TextStyle(
                              color: Color(0xff8E0c03),
                              fontFamily: 'Comfortaa',
                              letterSpacing: 1,
                              fontWeight: FontWeight.w900),
                        ),
                        leading: Icon(
                          Icons.person,
                          color: Color(0xff8E0c03),
                        ),
                      ),
                      Divider(
                        color: Color(0xff8E0c03),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: ListTile(
                          title: Text(
                            'Air Ad',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,

                                color: Color(0xff8E0c03), fontFamily: 'Comfortaa'),
                          ),
                          leading: Icon(
                            Icons.airplanemode_active,
                            color: Color(0xff8E0c03)
                          ),
                        ),
                      ),
                      Divider(
                        color: Color(0xff8E0c03),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterFirstStep()));
                        },
                        child: ListTile(
                          title: Text(
                            'Adv Register',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                                color: Color(0xff8E0c03), fontFamily: 'Comfortaa'),
                          ),
                          leading: Icon(
                            Icons.person_add,
                            color: Color(0xff8E0c03),
                          ),
                        ),

                      ),
                      Divider(
                        color: Color(0xff8E0c03),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Verification()));
                        },
                        child: ListTile(
                          title: Text(
                            'Adv Verification',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                                color: Color(0xff8E0c03), fontFamily: 'Comfortaa'),
                          ),
                          leading: Icon(
                            Icons.verified_user,
                            color: Color(0xff8E0c03),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff8E0c03),
        title: Text(
          'Manage',

          style: TextStyle(color: Colors.white,
          fontFamily: 'Comfortaa'
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),

      ),
      body: Tabs(),
    );
  }
}
