import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/tabbar/appintmentpage.dart';
import 'package:saloonbooking_aap/tabbar/cartpage.dart';
import 'package:saloonbooking_aap/tabbar/chatpage.dart';
import 'package:saloonbooking_aap/tabbar/dashboard.dart';
import 'package:saloonbooking_aap/tabbar/profilePage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  TabController _tabController;
  final titels = [
    "Home",
    "Appointment",
    "Profile",
    "Payment",
    "Notification",
    "Settings",
    "Sign Out"
  ];
  final icons = [
    Icons.home,
    Icons.calendar_today_sharp,
    Icons.person_outline_sharp,
    Icons.account_balance_wallet_outlined,
    Icons.add_alert,
    Icons.settings,
    Icons.power_settings_new_outlined
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(bottom: 10),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          "assets/persone.jpeg",
                        ),
                        radius: 50.0,
                      ),
                    ),
                    Text(
                      "Robert Jeison",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: appcolor.colorblack),
                    ),
                    Text(
                      "robartjeisone@gmail.com",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: appcolor.colorblack),
                    )
                  ],
                )),
            Container(
              color: appcolor.bgcolor,
              height: MediaQuery.of(context).size.height / 1,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: titels.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(
                      icons[index],
                      color: appcolor.colorwhite,
                    ),
                    title: Text(
                      titels[index],
                      style: TextStyle(color: appcolor.colorwhite),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: appcolor.bgcolor,
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.location_on,size: 25,color: appcolor.colorblack,),

          ),
          IconButton(
            icon: Icon(Icons.notifications,size: 25,color: appcolor.colorblack,),

          )

        ],
        backgroundColor: appcolor.colorwhite,
        iconTheme: IconThemeData(color: appcolor.colorblack),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        unselectedLabelStyle: TextStyle(fontSize: 13),
        labelStyle: TextStyle(fontSize: 10),
        unselectedLabelColor: Colors.lightGreenAccent,
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(width: 2.0, color: appcolor.colorwhite)),
        tabs: <Widget>[
          Tab(
            icon: Icon(
              Icons.home,
              size: 20,
            ),
            text: "Home",
          ),
          Tab(
            icon: Icon(
              Icons.calendar_today_outlined,
              size: 20,
            ),
            text: "Appointment",
          ),
          Tab(
            icon: Icon(
              Icons.message,
              size: 20,
            ),
            text: "Invox",
          ),
          Tab(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 20,
            ),
            text: "Cart",
          ),
          Tab(
            icon: Icon(
              Icons.person,
              size: 20,
            ),
            text: "Profile",
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height /1,
        child: Center(
          child: TabBarView(
            controller: _tabController,
            children: <Widget>[
              dashboard(),
              appointmentpage(),
              chatapp(),
              cartpage(),
              profilepage(),
            ],
          ),
        ),
      ),
    );
  }
}
