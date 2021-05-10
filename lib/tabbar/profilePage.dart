import 'dart:ui';

import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/main.dart';

class profilepage extends StatefulWidget {
  @override
  _profilepageState createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            // The containers in the background
            new Column(
              children: <Widget>[
                new Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Colors.redAccent, Colors.pinkAccent])),
                  height: MediaQuery.of(context).size.height * .40,
                  child: Container(
                    width: double.infinity,
                    height: 300.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/persone.jpeg"),
                          radius: 50.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "username",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                /*  new Container(
                    height: MediaQuery.of(context).size.height * .0,
                    color: Colors.white,
                  )*/
              ],
            ),
            // The card widget with top padding,
            // incase if you wanted bottom padding to work,
            // set the `alignment` of container to Alignment.bottomCenter
            new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * .30,
                  right: 20.0,
                  left: 20.0),
              child: new Container(
                height: MediaQuery.of(context).size.height / 2.3,
                width: MediaQuery.of(context).size.width,
                child: new Card(
                  color: Colors.white,
                  elevation: 9.0,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.call),
                        title: Text(
                          "Mobile Number",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("1234567899"),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text(
                          "Email Id",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("user@gmail.com"),
                      ),
                      ListTile(
                        leading: Icon(Icons.person),
                        title: Text(
                          "Gender",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Male"),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on_outlined),
                        title: Text(
                          "Addresss",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "abcd sp road near rehaan Medical Mumbia 400027"),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            icon: Icon(Icons.edit),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
