import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:air_ad/screens/ubl/atm_detailes_screen.dart';
import 'package:air_ad/screens/ubl/atm_feature_screen.dart';
import 'package:air_ad/screens/ubl/offer_detail.dart';

class OfferAtmDetailS extends StatefulWidget {
  @override
  _OfferAtmDetailSState createState() => _OfferAtmDetailSState();
}

class _OfferAtmDetailSState extends State<OfferAtmDetailS>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xffd9534f),
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
                  Navigator.pop(context,
                      MaterialPageRoute(builder: (context) => OfferDetail()));
                },
                icon: Icon(
                  Icons.arrow_back_outlined,
                  size: 20,
                ),
              ),
            ),
            SizedBox(width: 20),
            Text('UBL Visa Mega Wallet..',
            style: TextStyle(
              fontFamily: 'Comfortaa'
            ),)
          ],
        ),
      ),
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              padding: EdgeInsets.all(10),
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/ubl-debit.png'),
              ),
            ),
            Card(
              color: Colors.white,
              child: TabBar(
                  labelColor: Color(0xffd9534f),
                  unselectedLabelColor: Colors.grey,
                  controller: tabController,
                  indicatorColor: Color(0xffd9534f),
                  tabs: [
                    Tab(
                      child: Text(
                        'Detailes',
                        style: TextStyle(
                          color: Color(0xffd9534f),
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Features',
                        style: TextStyle(
                            color: Color(0xffd9534f),
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1
                        ),
                      ),
                    ),
                  ]),
            ),
            Expanded(
              child: TabBarView(
                  controller: tabController,
                  children: <Widget>[
                    AtmDetailesScreen(),
                    AtmFeatureScreen()

                  ]),
            )
          ],
        ),
        
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            color: Colors.white,
            child: RaisedButton(
              color: Color(0xffd9534f),
              onPressed: () {},
              child: Text(
                'Detail',
                style: TextStyle(color: Colors.white,
                fontWeight: FontWeight.w900,
                  fontFamily: 'Comfortaa',
                  letterSpacing: 1
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
