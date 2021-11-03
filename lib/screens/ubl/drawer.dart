import 'package:air_ad/screens/adv/login.dart';
import 'package:air_ad/screens/adv/register_first_step.dart';
import 'package:air_ad/screens/adv/verification.dart';
import 'package:flutter/material.dart';

class DrawerLayout extends StatefulWidget {
  @override
  _DrawerLayoutState createState() => _DrawerLayoutState();
}

class _DrawerLayoutState extends State<DrawerLayout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Container(
          color: Colors.white,
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xffd9534f),
                child: Container(
                  padding:
                      EdgeInsets.only(left: 10, top: 50, right: 10, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(3),
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white, width: 2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                50,
                              ),
                            )),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
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
                        'Naseer Ahsan',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Confortaa',
                            letterSpacing: 1.0,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ListTile(
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xffd9534f),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900),
                    ),
                    leading: Icon(
                      Icons.person,
                      color: Color(0xffd9534f),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Air Ad',
                      style: TextStyle(
                          letterSpacing: 1,
                          color: Color(0xffd9534f),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900),
                    ),
                    leading: Icon(
                      Icons.airplanemode_on,
                      color: Color(0xffd9534f),
                    ),
                  ),
                  Divider(),
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
                            letterSpacing: 1,
                            color: Color(0xffd9534f),
                            fontFamily: 'Confortaa',
                            fontWeight: FontWeight.w900),
                      ),
                      leading: Icon(
                        Icons.person_add,
                        color: Color(0xffd9534f),
                      ),
                    ),
                  ),
                  Divider(),
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
                            letterSpacing: 1,
                            color: Color(0xffd9534f),
                            fontFamily: 'Confortaa',
                            fontWeight: FontWeight.w900),
                      ),
                      leading: Icon(
                        Icons.verified_user,
                          color: Color(0xffd9534f)
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
