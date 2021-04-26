import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/loginpage.dart';

class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => loginpage())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child:
                  Image.asset('assets/splash_01.png', width: 200, height: 200)),
          Text(
            "Salong",
            style: TextStyle(
                color: appcolor.colorwhite,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Hair Cut",
            style: TextStyle(
                color: appcolor.colorwhite,
                fontSize: 25,
                fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
