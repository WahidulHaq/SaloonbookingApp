import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:fancy_drawer/fancy_drawer.dart';
import 'package:saloonbooking_aap/tabbar/profilePage.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  final List<Widget> _children = [
    profilepage()
  ];
  FancyDrawerController _controller;
  final titels = [
    "Home",
    "Appointment",
    "Payment",
    "Notification",
    "Settings",
    "Sign Out"
  ];
  final icons = [
    Icons.home,
    Icons.calendar_today_sharp,
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
    _controller = FancyDrawerController(
        vsync: this, duration: Duration(microseconds: 250))
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
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
                  color: Colors.lightGreen[700],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      margin: EdgeInsets.only(bottom: 10),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/persone.jpeg",
                            ),
                          )),
                    ),
                    Text(
                      "Robert Jeison",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: appcolor.colorwhite),
                    ),
                    Text(
                      "robartjeisone@gmail.com",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: appcolor.colorwhite),
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
        backgroundColor: appcolor.bgcolor,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appcolor.bgcolor,
        selectedItemColor: appcolor.colorwhite,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            backgroundColor: appcolor.bgcolor,
            icon: new Icon(Icons.home),
            title: new Text('Home'),
          ),
          BottomNavigationBarItem(
              backgroundColor: appcolor.bgcolor,
              icon: Icon(Icons.location_on_outlined),
              title: Text("Nearby")),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_outlined),
              title: Text("Appointment")),
          BottomNavigationBarItem(
              icon: Icon(Icons.mark_chat_unread_outlined),
              title: Text("Inbox")),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text("Profile")),
        ],
      ),
      body: Container(
        color: appcolor.colorwhite,
      ),
    );
  }
}
