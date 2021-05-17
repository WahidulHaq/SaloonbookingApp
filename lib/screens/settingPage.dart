import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';

class settingPage extends StatefulWidget {
  @override
  _settingPageState createState() => _settingPageState();
}

class _settingPageState extends State<settingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: appcolor.colorgre,
          ),
        ),
      ),
      body: ListView(
        children: [
          Text(
            "Settings",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.person,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Account",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            thickness: 2.0,
            height: 15,
          ),
          SizedBox(
            height: 10,
          ),
          _builAccountOptionRow(context, "Change Password"),
          _builAccountOptionRow(context, "Content Setting"),
          _builAccountOptionRow(context, "Social"),
          _builAccountOptionRow(context, "Language"),
          _builAccountOptionRow(context, "Privecy and security"),
          SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Icon(
                Icons.volume_down_outlined,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Notification",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 10,
            thickness: 2.0,
          ),
          SizedBox(
            height: 10,
          ),
          _builNotificationOptionRow("News for you", true),
          _builNotificationOptionRow("Account activity", true),
          _builNotificationOptionRow("Opportunity", false),
          SizedBox(
            height: 40,
          ),
          Center(
            child: OutlineButton(
              padding: EdgeInsets.symmetric(horizontal: 40),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              onPressed: () {},
              child: Text(
                "Sign Out",
                style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 2.2,
                    color: appcolor.colorblack),
              ),
            ),
          )
        ],
      ),
    );
  }

  GestureDetector _builAccountOptionRow(BuildContext context, String title) {
    return GestureDetector(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext conext) {
              return AlertDialog(
                title: Text(title),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Option 1"),
                    Text("Option 2"),
                    Text("Option 3"),
                  ],
                ),
                actions: [
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close"),
                  )
                ],
              );
            });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: appcolor.colorgre),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: appcolor.colorgre,
            )
          ],
        ),
      ),
    );
  }

  Row _builNotificationOptionRow(String title, bool isActive) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: appcolor.colorgre),
        ),
        Transform.scale(
          scale: 0.7,
          child: CupertinoSwitch(
            value: isActive,
            onChanged: (val) {
              setState(() {
                isActive = val;
              });
            },
            activeColor: Colors.orangeAccent,
          ),
        )
      ],
    );
  }
}
