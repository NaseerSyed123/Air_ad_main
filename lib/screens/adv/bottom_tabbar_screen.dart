import 'package:air_ad/screens/adv/engage.dart';
import 'package:air_ad/screens/adv/manage.dart';
import 'package:air_ad/screens/adv/reviews.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/adv_review_dashboard/screens/stats_screen.dart';

class BottomTabbarScreen extends StatefulWidget {
  @override
  _BottomTabbarScreenState createState() => _BottomTabbarScreenState();
}

class _BottomTabbarScreenState extends State<BottomTabbarScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  int selextedItemIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(

          bottomNavigationBar: Material(
            color: Colors.grey[100],
            child: TabBar(
              labelColor:  Color(0xff8E0c03),
              labelStyle: TextStyle(color: Color(0xff8E0c03),),
              unselectedLabelColor: Color(0xffd9534f),
              indicatorColor: Color(0xff8E0c03),
              ///// DONE
              controller: controller,
              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                  text: "Manage",
                ),
                Tab(
                  icon: new Icon(Icons.cached_outlined),
                  text: "Engage",
                ),
                Tab(
                  icon: new Icon(Icons.rate_review),
                  text: "Reviews",
                ),
              ],
            ),
          ),
          body: TabBarView(
            controller: controller,
            children: [Manage(), Engage(), StatsScreen()],
          ),
        ));
  }
}
