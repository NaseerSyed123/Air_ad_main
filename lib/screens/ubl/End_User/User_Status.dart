import 'package:flutter/material.dart';

class UserStatus extends StatefulWidget {
  @override
  _UserStatusState createState() => _UserStatusState();
}

class _UserStatusState extends State<UserStatus> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
        itemBuilder: (context, index) {

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text('King Burger',
              style: TextStyle(
                color: Color(0xffd9534f),
                fontWeight: FontWeight.bold,
                fontSize: 25
              ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Zingar Burbar',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('Rs: 100',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Divider(),

            ],
          ),

        );

    });

  }
}
