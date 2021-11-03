import 'package:flutter/material.dart';

class AllCategory extends StatefulWidget {
  @override
  _AllCategoryState createState() => _AllCategoryState();
}

class _AllCategoryState extends State<AllCategory >
    with SingleTickerProviderStateMixin {
  TabController tabController;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffd9534f),
        leading: Container(
          child: Icon(Icons.arrow_back),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5), shape: BoxShape.circle),
        ),
        title: SizedBox(
          height: 30,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  padding:
                  EdgeInsets.only(left: 10, top: 3, right: 10, bottom: 2),
                  margin: EdgeInsets.only(right: 8),
                  child: Text(
                    'Fast Food',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                );
              }),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: Icon(Icons.search),
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          TabBar(
              labelColor: Colors.grey,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              indicatorColor: Colors.grey,
              tabs: [
                Tab(

                  child: Text(
                    'Discount',
                  ),
                ),
                Tab(
                  child: Text(
                    'Filter',
                  ),
                ),
              ]),
          Expanded(
              child: ListView.builder(
                  itemBuilder: (context, index) {
            return Card(

              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 2,
              margin: EdgeInsets.all(10),
              child: Container(

                padding: EdgeInsets.only(bottom: 20),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/images/pizza.jpg'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Pizza',
                                style: TextStyle(
                                    color: Colors.grey
                                ),),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 7),
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.all(Radius.circular(10))
                                ),
                                child: Text('Upto\n30%',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 9, vertical:4),
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Text('3.7',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4, vertical:2),
                                decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Text('closed',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4, vertical:2),
                                decoration: BoxDecoration(
                                    color: Colors.grey[500],
                                    borderRadius: BorderRadius.all(Radius.circular(5))
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.attach_file, size: 20, color: Colors.white,),
                                    Text('1 brand offer',
                                      style: TextStyle(
                                          color: Colors.white
                                      ),),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),

                    )
                  ],
                ),
              ),
            );
          }))
        ],
      ),
    );
  }
}
