import 'package:flutter/material.dart';

import 'package:air_ad/screens/ubl/get_offer.dart';

class FeedBackForm extends StatefulWidget {
  @override
  _FeedBackFormState createState() => _FeedBackFormState();
}

class _FeedBackFormState extends State<FeedBackForm> {
  bool phoneValue = false;
  bool addressValue = false;
  bool timeValue = false;
  bool dealsValue = false;
  bool menuValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor:Color(0xffd9534f),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              onPressed: (){
                Navigator.pop(context, MaterialPageRoute(builder: (context) => GetOffer()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 40,
            ),
            Text('Help Us Improve',
            style: TextStyle(fontFamily: 'Comfortaa'),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Information',
                style: TextStyle(color: Colors.grey[700],fontFamily: 'Comfortaa',fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                color: Colors.grey[100],
                elevation: 1,
                child: TextFormField(

                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      hintText: 'Enter Your Name',
                  hintStyle: TextStyle(
                    fontFamily: 'Comfortaa'
                  )
                  ),
                ),
              ),
              Card(
                color: Colors.grey[100],
                elevation: 1,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      hintText: 'Enter Your Email',
                  hintStyle: TextStyle(
                    fontFamily: 'Comfortaa'
                  )
                  ),
                ),
              ),
              Card(
                color: Colors.grey[100],
                elevation: 1,
                child: TextFormField(
                  textInputAction: TextInputAction.next,
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      hintText: 'Enter Phone Number',
                  hintStyle: TextStyle(
                    fontFamily: 'Comfortaa'
                  )
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'What is wrong?',
                style: TextStyle(color: Colors.grey[700], fontFamily: "Comfortaa",
                fontWeight: FontWeight.w900
                ),
              ),
              CheckboxListTile(
                activeColor: Color(0xffd9534f),
                title: Text("Phone number",
                style: TextStyle(fontFamily: 'Comfortaa'),), //    <-- label
                value: phoneValue,
                onChanged: (bool Value) {
                  setState(() {
                    phoneValue = Value;
                  });
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor:Color(0xffd9534f),
                title: Text("Branch address",
                style: TextStyle(

                  fontFamily: 'Comfortaa'
                ),), //    <-- label
                value: addressValue,
                onChanged: (bool Value) {
                  setState(() {
                    addressValue = Value;
                  });
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor:  Color(0xffd9534f),
                title: Text("Branch Timing",
                style: TextStyle(
                  fontFamily: 'Comfortaa'
                ),
                ), //    <-- label
                value: timeValue,
                onChanged: (bool Value) {
                  setState(() {
                    timeValue = Value;
                  });
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor: Color(0xffd9534f),
                title: Text("Wrong or expired deals",
                style: TextStyle(
                   fontFamily: 'Comfortaa'
                ),
                ), //    <-- label
                value: dealsValue,
                onChanged: (bool Value) {
                  setState(() {
                    dealsValue = Value;
                  });
                },
              ),
              Divider(),
              CheckboxListTile(
                activeColor: Color(0xffd9534f),
                title: Text("Incorrect menu",
                style: TextStyle(
                   fontFamily:'Comfortaa'
                ),
                ), //    <-- label
                value: menuValue,
                onChanged: (bool Value) {
                  setState(() {
                    menuValue = Value;
                  });
                },
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
