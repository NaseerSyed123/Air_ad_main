import 'package:flutter/material.dart';

class AdvTagsScreen extends StatefulWidget {
  @override
  _AdvTagsScreenState createState() => _AdvTagsScreenState();
}

class _AdvTagsScreenState extends State<AdvTagsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),

      width: MediaQuery.of(context).size.width,
      height: 537,
      child: Column(

        children: [
          SizedBox(
            height: 5,
          ),
          Text(
            'Tags',
            style: TextStyle(
                color: Color(0xff8E0c03),
                fontSize: 25,
                fontWeight: FontWeight.w900,
            fontFamily: 'Comfortaa'
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              tagContainer(
                titleTag: 'Fast Food'
              ),
              tagContainer(
                  titleTag: 'Burger'
              ),
              tagContainer(
                  titleTag: 'Pizza'
              ),

            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              tagContainer(
                  titleTag: 'Rice'
              ),
              tagContainer(
                  titleTag: 'Zinger Buger'
              ),
              tagContainer(
                  titleTag: 'Fresh Juice'
              ),

            ],
          ),
        ],
      ),
    );
  }

  Widget tagContainer({String titleTag}) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Text(
        titleTag,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
