import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvFormScreen extends StatefulWidget {
  @override
  _AdvFormScreenState createState() => _AdvFormScreenState();
}

class _AdvFormScreenState extends State<AdvFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: MediaQuery.of(context).size.width,
      height: 537,
      child: Column(

        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Adv Form',
            style: TextStyle(
                color: Color(0xff8E0c03),
                fontSize: 25,
                fontFamily: 'Comfortaa',

                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            height: 40,
            child: TextFormField(
              cursorColor: Color(0xff8E0c03),
              decoration: InputDecoration(
                hintText: 'Enter Product Name:',
                hintStyle: TextStyle(
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
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            decoration: BoxDecoration(
                border: Border.all(color: Color(0xff8E0c03)),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: FlatButton(
              onPressed: () {},
              splashColor: Color(0xff8E0c03),
              child: Text(
                'Login',
                style: TextStyle(
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1,
                    color: Color(0xff8E0c03)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
