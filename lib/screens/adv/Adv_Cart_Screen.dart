import 'package:air_ad/screens/ubl/End_User/Library/Language_Library/lib/easy_localization_provider.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/End_User/CartItemData.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:air_ad/screens/ubl/End_User/CartUIComponent/Delivery.dart';

// import 'Library/Language_Library/lib/easy_localization_delegate.dart';
// import 'Library/Language_Library/lib/easy_localization_provider.dart';

class AdvCartScreen extends StatefulWidget {
  @override
  _AdvCartScreenState createState() => _AdvCartScreenState();
}

class _AdvCartScreenState extends State<AdvCartScreen> {
  final List<cartItem> items = new List();

  @override
  void initState() {
    super.initState();
    setState(() {
      items.add(
        cartItem(
          img: "assets/images/chicken.jpg",
          id: 1,
          title: "Chicken",
          desc: "Fresh chicken",
          price: "\$ 450",
        ),
      );
      items.add(
        cartItem(
          img: "assets/images/burger.jpg",
          id: 2,
          title: "Zingar Burger",
          desc: "Tasty Burger",
          price: "\$ 250",
        ),
      );
    });
  }

  /// Declare price and value for chart
  int value = 1;
  int pay = 950;

  @override
  Widget build(BuildContext context) {
    print("add cart ${items.length}");
    var data = EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(
          // appBar: AppBar(
          //   iconTheme: IconThemeData(color: Color(0xFF6991C7)),
          //   centerTitle: true,
          //   backgroundColor: Colors.white,
          //   title: Text(
          //    'Card',
          //     style: TextStyle(
          //         fontFamily: "Gotik",
          //         fontSize: 18.0,
          //         color: Colors.black54,
          //         fontWeight: FontWeight.w700),
          //   ),
          //   elevation: 0.0,
          // ),

          ///
          ///
          /// Checking item value of cart
          ///
          ///
          body: items.length > 0
              ? ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, position) {
                    ///
                    /// Widget for list view slide delete
                    ///
                    return Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      actions: <Widget>[
                        new IconSlideAction(
                          caption: 'Item',
                          color: Colors.blue,
                          icon: Icons.archive,
                          onTap: () {
                            ///
                            /// SnackBar show if cart Archive
                            ///
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text(''),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.blue,
                            ));
                          },
                        ),
                      ],
                      secondaryActions: <Widget>[
                        new IconSlideAction(
                          key: Key(items[position].id.toString()),
                          caption: 'Cart',
                          color: Colors.red,
                          icon: Icons.delete,
                          onTap: () {
                            setState(() {
                              items.removeAt(position);
                            });

                            ///
                            /// SnackBar show if cart delet
                            ///
                            Scaffold.of(context).showSnackBar(SnackBar(
                              content: Text('cartDeleted'),
                              duration: Duration(seconds: 2),
                              backgroundColor: Colors.redAccent,
                            ));
                          },
                        ),
                      ],
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 1.0, left: 13.0, right: 13.0),

                        /// Background Constructor for card
                        child: Container(
                          height: 220.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.1),
                                blurRadius: 3.5,
                                spreadRadius: 0.4,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.all(10.0),

                                      /// Image item
                                      child: Container(
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.1),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12
                                                        .withOpacity(0.1),
                                                    blurRadius: 0.5,
                                                    spreadRadius: 0.1)
                                              ]),
                                          child: Image.asset(
                                            '${items[position].img}',
                                            height: 130.0,
                                            width: 120.0,
                                            fit: BoxFit.cover,
                                          ))),
                                  Flexible(
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25.0, left: 10.0, right: 5.0),
                                      child: Column(
                                        /// Text Information Item
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${items[position].title}',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontFamily: "Sans",
                                                  color: Colors.black87,
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                              InkWell(
                                                onTap: _showAddDialog,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(right: 5),
                                                  color: Color(0xffd9534f),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 5),
                                                  child: Text(
                                                    'Edit',
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0)),
                                          Text(
                                            '${items[position].desc}',
                                            style: TextStyle(
                                              color: Colors.black54,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(top: 10.0)),
                                          Text('${items[position].price}'),
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       top: 18.0, left: 0.0),
                                          //   child: Container(
                                          //     width: 112.0,
                                          //     decoration: BoxDecoration(
                                          //         color: Colors.white70,
                                          //         border: Border.all(
                                          //             color: Colors.black12
                                          //                 .withOpacity(0.1))),
                                          //     child: Row(
                                          //       mainAxisAlignment:
                                          //           MainAxisAlignment
                                          //               .spaceAround,
                                          //       children: <Widget>[
                                          //         /// Decrease of value item
                                          //         InkWell(
                                          //           onTap: () {
                                          //             setState(() {
                                          //               value = value - 1;
                                          //               pay = 950 * value;
                                          //             });
                                          //           },
                                          //           child: Container(
                                          //             height: 30.0,
                                          //             width: 30.0,
                                          //             decoration: BoxDecoration(
                                          //                 border: Border(
                                          //                     right: BorderSide(
                                          //                         color: Colors
                                          //                             .black12
                                          //                             .withOpacity(
                                          //                                 0.1)))),
                                          //             child: Center(
                                          //                 child: Text("-")),
                                          //           ),
                                          //         ),
                                          //         Padding(
                                          //           padding: const EdgeInsets
                                          //                   .symmetric(
                                          //               horizontal: 18.0),
                                          //           child:
                                          //               Text(value.toString()),
                                          //         ),
                                          //
                                          //         /// Increasing value of item
                                          //         InkWell(
                                          //           onTap: () {
                                          //             setState(() {
                                          //               value = value + 1;
                                          //               pay = 950 * value;
                                          //             });
                                          //           },
                                          //           child: Container(
                                          //             height: 30.0,
                                          //             width: 28.0,
                                          //             decoration: BoxDecoration(
                                          //                 border: Border(
                                          //                     left: BorderSide(
                                          //                         color: Colors
                                          //                             .black12
                                          //                             .withOpacity(
                                          //                                 0.1)))),
                                          //             child: Center(
                                          //                 child: Text("+")),
                                          //           ),
                                          //         ),
                                          //       ],
                                          //     ),
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(top: 8.0)),
                              Divider(
                                height: 2.0,
                                color: Colors.black12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 9.0, left: 10.0, right: 10.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),

                                      /// Total price of item buy
                                      child: Text(
                                        'Cart Total' + " \$ " + pay.toString(),
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 15.5,
                                            fontFamily: "Sans"),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 10.0),
                                      child: Container(
                                        height: 40.0,
                                        width: 120.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xffd9534f),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Cart Pay',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: "Sans",
                                                fontWeight: FontWeight.w600),
                                          ),
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
                    );
                  },
                  scrollDirection: Axis.vertical,
                )
              : noItemCart()),
    );
  }

  _showAddDialog() async {
    await showDialog(
        context: context,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              content: Container(
                height: 550,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        color: Colors.red,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text('Edit Item',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Item:',
                        style: TextStyle(
                            letterSpacing: 1, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextFormField(
                        // any number you need (It works as the rows for the textarea)
                        keyboardType: TextInputType.number,

                        decoration: InputDecoration(
                            hintText: 'Enter Item',
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Sans',
                                letterSpacing: 0.3,
                                color: Colors.grey[200],
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Description:',
                        style: TextStyle(
                            letterSpacing: 1, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextFormField(
                        minLines: 3,
                        // any number you need (It works as the rows for the textarea)
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                            hintText: 'Enter Detail',
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Sans',
                                letterSpacing: 0.3,
                                color: Colors.grey[200],
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Price:',
                        style: TextStyle(
                            letterSpacing: 1, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(border: Border.all()),
                      child: TextFormField(
                        // any number you need (It works as the rows for the textarea)
                        keyboardType: TextInputType.number,

                        decoration: InputDecoration(
                            hintText: 'Enter Price',
                            border: InputBorder.none,
                            labelStyle: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Sans',
                                letterSpacing: 0.3,
                                color: Colors.grey[200],
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Upload Image:',
                        style: TextStyle(
                            letterSpacing: 1, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60,
                      decoration: BoxDecoration(border: Border.all()),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        color: Colors.red,
                        child: Text(
                          "Update Item",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}

///
///
/// If no item cart this class showing
///
class noItemCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return Container(
      width: 500.0,
      color: Colors.white,
      height: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding:
                    EdgeInsets.only(top: mediaQueryData.padding.top + 50.0)),
            Image.asset(
              "assets/imgIllustration/IlustrasiCart.png",
              height: 300.0,
            ),
            Padding(padding: EdgeInsets.only(bottom: 10.0)),
            Text(
              'cartNoItem',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18.5,
                  color: Colors.black26.withOpacity(0.2),
                  fontFamily: "Popins"),
            ),
          ],
        ),
      ),
    );
  }
}
