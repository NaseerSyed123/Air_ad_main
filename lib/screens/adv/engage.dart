import 'package:flutter/material.dart';

import 'constants.dart';

class Engage extends StatefulWidget {
  @override
  _EngageState createState() => _EngageState();
}

class _EngageState extends State<Engage> {
  final CategoriesScroller categoriesScroller = CategoriesScroller();
  ScrollController controller = ScrollController();
  //TODO bool veriable declared
  bool closeTopContainer = false;
  double topContainer = 0;






  // Color col = Colors.blue;

  List<Widget> itemsData = [];

  void getPostsData() {
    List<dynamic> responseList = FOOD_DATA;
    List<Widget> listItems = [];
    responseList.forEach((post) {
      listItems.add(Container(
          height: 150,
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.black.withAlpha(100), blurRadius: 10.0),
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          post["name"],
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(

                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                          child: Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),

                      ],
                    )
                  ],
                ),
                Text(
                  post["brand"],
                  style: const TextStyle(fontSize: 17, color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          "Rs. ${post["price"]}",
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                       Container(
                         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),

                         decoration: BoxDecoration(
                             color: Colors.green,
                           borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: Text('Confirm',
                         style: TextStyle(
                           color: Colors.white,
                           letterSpacing: 2,
                           fontWeight: FontWeight.bold
                         ),
                         ),
                       )
                      ],
                    )
                  ],
                )
              ],
            ),
          )));
    });
    setState(() {
      itemsData = listItems;
    });
  }

  @override
  void initState() {
    super.initState();
    getPostsData();
    controller.addListener(() {
      double value = controller.offset / 119;

      setState(() {
        topContainer = value;

        //TODO bool vedriable call
        closeTopContainer = controller.offset > 50;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height * 0.30;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            'Engage Your Customer',
            style: TextStyle(color: Colors.green),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.menu,
            color: Colors.green,
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.person, color: Colors.green),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          // height: size.height,
          child: Column(
            children: <Widget>[
              AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                //Todo bool veriable calling
                opacity: closeTopContainer ? 0 : 1,
                child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    // width: size.width,
                    // alignment: Alignment.topCenter,
                    //Todo bool veriable calling
                    height: closeTopContainer ? 0 : categoryHeight,
                    child: categoriesScroller),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Container(
                      width: 317,
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        // margin: EdgeInsets.all(10),
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Text(
                                      'Express in 9 month',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 5),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[300],
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5))),
                                    child: Text(
                                      'Terms applied',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 5),
                                decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: Text(
                                  'Available on 3 branches',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: Container(
                                        height: 40,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                            color: Colors.blue,

                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))
                                        ),
                                        child: Center(child: Text('Add',
                                          style: TextStyle(
                                              color: Colors.white,
                                              letterSpacing: 2,
                                              fontWeight: FontWeight.bold
                                          ),
                                        )),
                                      )),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: Container(
                                        padding: EdgeInsets.all(5),
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        child: Center(
                                          child: Text('Cancel',
                                            style: TextStyle(
                                                color: Colors.white,
                                                letterSpacing: 2,
                                                fontWeight: FontWeight.bold
                                            ),),
                                        ),
                                      ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                  child: InkWell(
                    child: ListView.builder(
                        controller: controller,
                        itemCount: itemsData.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          double scale = 1.0;
                          //TODO if condition appling
                          if (topContainer > 0.5) {
                            scale = index + 0.5 - topContainer;
                            //TODO if condition appling
                            if (scale < 0) {
                              scale = 0;
                              //TODO if condition appling
                            } else if (scale > 1) {
                              scale = 1;
                            }
                          }
                          return Opacity(
                            opacity: scale,
                            child: Transform(
                              transform: Matrix4.identity()..scale(scale, scale),
                              alignment: Alignment.bottomCenter,
                              child: Align(
                                  heightFactor: 0.7,
                                  alignment: Alignment.topCenter,
                                  child: itemsData[index]),
                            ),
                          );
                        }),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoriesScroller extends StatefulWidget {
  const CategoriesScroller();

  @override
  _CategoriesScrollerState createState() => _CategoriesScrollerState();
}

class _CategoriesScrollerState extends State<CategoriesScroller> {
  @override
  void initState() {
    setState(() {

    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    List <Color> colors = [Colors.blue, Colors.red, Colors.green];

    Color color = Colors.white;



    final double categoryHeight =
        MediaQuery.of(context).size.height * 0.30 - 70;
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: FittedBox(
          fit: BoxFit.fill,
          alignment: Alignment.topCenter,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      setState(){
                        color = Colors.orange;
                      }
                    },
                    child: Container(
                      width: 150,
                      margin: EdgeInsets.only(right: 20),
                      height: categoryHeight,
                      decoration: BoxDecoration(
                          color: Colors.orange.shade400,
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Confirmed",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "20",
                              style: TextStyle(
                                  fontSize: 50,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              "Orders",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        // color: Colors.orange.shade400,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Process",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Dispatched",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "12",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Deliveres",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "06",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    margin: EdgeInsets.only(right: 20),
                    height: categoryHeight,
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Text(
                            "Paid",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "10",
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Orders",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
