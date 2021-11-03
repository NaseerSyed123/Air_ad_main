import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/home.dart';

class SearchPlaceScreen extends StatefulWidget {
  @override
  _SearchPlaceScreenState createState() => _SearchPlaceScreenState();
}

class _SearchPlaceScreenState extends State<SearchPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black.withOpacity(0.5),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(
                      context, MaterialPageRoute(builder: (context) => Home()));
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  size: 20,
                ),
              ),
            ),
            SizedBox(width: 50),
            Text('Search in Town')
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                autofocus: true,
                textInputAction: TextInputAction.next,
                style: TextStyle(color: Colors.grey),
                cursorColor: Colors.blue,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  border: new OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              color: Colors.white,
              child: Column(
                children: [
                 listTileContainer(
                   titleText: 'Nearby Places',
                   icon: Icons.ios_share
                 ),
                  Divider(),
                  listTileContainer(
                      titleText: 'Top Rated Places',
                      icon: Icons.star_border
                  ),
                  Divider(),
                  listTileContainer(
                      titleText: 'Max Discount',
                      icon: Icons.history_toggle_off
                  ),
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
  Widget listTileContainer({String titleText, IconData icon}){
    return  ListTile(
      leading: Icon(
        icon,
        color: Colors.black,
      ),
      title: Text(titleText,
      ),
    );
}
}
