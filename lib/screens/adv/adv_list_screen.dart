import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdvListScreen extends StatefulWidget {
  @override
  _AdvListScreenState createState() => _AdvListScreenState();
}

class _AdvListScreenState extends State<AdvListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      width: MediaQuery.of(context).size.width,
      height: 535,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.green[700],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Text(
              'Order Now',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Column(
                      children: [
                        ListTile(
                            title: Text(
                              "Pizza",
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('This is tasty Pizza'),
                            trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '100',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Container(
                                  height: 28,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,),
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.green),
                                      borderRadius: BorderRadius.all(Radius.circular(10))

                                  ),
                                  child: FlatButton(
                                    onPressed: (){},
                                    splashColor: Colors.green,
                                    child: Text('Add to List',
                                      style: TextStyle(
                                          color: Colors.green
                                      ),),
                                  ),
                                )
                              ],
                            )),
                        Divider()
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
