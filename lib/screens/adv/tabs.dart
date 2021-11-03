// import 'package:custom_bottom_tabbar/audio.dart';
// import 'package:custom_bottom_tabbar/post.dart';
import 'package:air_ad/screens/adv/adv_audio_screen.dart';
import 'package:air_ad/screens/adv/adv_form_screen.dart';
import 'package:air_ad/screens/adv/adv_image_screen.dart';
import 'package:air_ad/screens/adv/adv_list_screen.dart';
import 'package:air_ad/screens/adv/adv_tags_screen.dart';
// import 'package:air_ad/screens/adv/audio.dart';
import 'package:air_ad/screens/ubl/End_User/B3_Cart_Screen.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

// import liberary
import 'package:flutter_swiper/flutter_swiper.dart';

import 'Adv_Cart_Screen.dart';



// import 'package:audioplayers/audioplayers.dart';
// import 'package:audioplayers/audio_cache.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  // Create Tabs List
  List list_name = [
    "Status ",
    "Air List",
    "Image",
    "Audio",
    "Tags",
    "Item ",
    "Tags"
  ];

  List advertiser_list = [
    AdvFormScreen(),
    AdvCartScreen(),
    // AdvListScreen(),
    AdvImageScreen(),
    // Audio(),
    AdvListScreen(),
    AdvTagsScreen(),
    AdvListScreen(),
    AdvTagsScreen(),
  ];

// Used to controll of index of swiper

  SwiperController _scrollController = new SwiperController();

  // Used to controll of index of tabs

  TabController tabController;

  int currentindex2 = 0; // for swiper index initial

  int selectedIndex = 0; // for tab index initial

// use for the maintain the any controller state
  @override
  void initState() {
    super.initState();

// Mention the index & length of Tab controller
    tabController = TabController(
      // mention the start index
      initialIndex: selectedIndex,
      // mention the length of index
      length: list_name.length,
      // Keep track of  Tab controller
      vsync: this,
    );
// I don't know
    tabController.addListener(() {
      setState(() {
        // Use for the print of tabcontroller of index
        print(tabController.index);
        // move according to the tan controller index
        _scrollController.move(tabController.index);
      });
    });
  }

  //Now let's initialize our player

  @override
  // make any wigdget
  Widget build(BuildContext context) {
    // Creates a widget and returns it
    return DefaultTabController(
      // mention list of Tabs
      length: list_name.length,
      // Use for basic material design visual layout structure.
      child: Scaffold(
        // All elements design in body under the container
        body: Container(
          // use for every screen's width
          width: MediaQuery.of(context).size.width,
          //  height: 330,
          height: MediaQuery.of(context).size.height,
          // use for every screen's height

          //  height: MediaQuery.of(context).size.height,
          // This widget use to display child widgets in vertical status
          child: Column(
            // Many widgets can use under the "Children Widget"
            children: [
              // Widget
              Container(
                  // Top space in the widget
                  padding: EdgeInsets.only(top: 10),
                  // Height of Container
                  height: 50,
                  // Widget
                  child: DefaultTabController(
                    // Mention the list of tabs
                    length: list_name.length,
                    // Widget
                    child: Container(
                      // I don't know
                      constraints: BoxConstraints(maxHeight: 35.0),
                      // I don't know
                      child: Material(
                        // Widget
                        child: TabBar(
                          // after action perform scroll controller moves according to the index
                          onTap: (index) => _scrollController.move(index),
                          controller: tabController,
                          // By default position

                          isScrollable: true,
                          indicatorColor: Color(0xff8E0c03),
                          // Selected Lable Color
                          labelColor: Color(0xff8E0c03),
                          // font size
                          labelStyle: TextStyle(fontSize: 12),
                          // unselected color
                          unselectedLabelColor:  Color(0xffd9534f),
                          // Tab list generate
                          tabs: List<Widget>.generate(list_name.length,
                              // Call tab index
                              (int index) {
                            return new Tab(text: list_name[index]);
                          }),
                        ),
                      ),
                    ),
                  )),

              // Widget use to fill the available space in the main axis (Horizontal)

              Expanded(
                child: new Swiper(
                  onIndexChanged: (index) {
                    setState(() {
                      selectedIndex = index;
                      tabController.animateTo(index);
                      currentindex2 = index;
                      print(index);
                    });
                  },
                  onTap: (index) {
                    setState(() {
                      selectedIndex = index;
                      tabController.animateTo(index);
                      currentindex2 = index;
                      print(index);
                    });
                  },

                  // Time period of move to next tab
                  duration: 1,
                  // Scroll horizontal
                  scrollDirection: Axis.horizontal,
                  // Function that checks for what type of item
                  itemBuilder: (BuildContext context, int index) {
                    return new Swiper(
                      // Timeperiod of swiper
                      duration: 1,
                      // controller widget
                      controller: _scrollController,
                      // Scroll direction Vertically
                      scrollDirection: Axis.vertical,
                      // Function that checks for what type of item
                      itemBuilder: (BuildContext context, int index) {
                        // This vidget shows specific
                        return VisibilityDetector(
                          // ??
                          key: Key(index.toString()),
                          child: Container(
                              margin: EdgeInsets.only(top: 10),

                              //  width: double.infinity,
                              // color: Colors.green,
                              child: Container(
                                child: advertiser_list[index],
                              )),

                          // I don't know==========================

                          onVisibilityChanged: (VisibilityInfo info) {
                            if (info.visibleFraction == 1)
                              setState(() {
                                selectedIndex = index;
                                tabController.animateTo(index);
                                currentindex2 = index;
                                print(index);
                              });
                          },
                        );
                        // ==============================
                      },
                      // list items show
                      itemCount: list_name.length,
                    );
                  },
                  itemCount: list_name.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
