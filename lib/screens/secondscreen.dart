import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/thirdscreen.dart';

class secondscreen extends StatefulWidget {
  @override
  _secondscreenState createState() => _secondscreenState();
}

class _secondscreenState extends State<secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100)),
              child: Image.asset("assets/client_01.jpeg")),
          Text(
            "Every Client is Special ",
            style: TextStyle(
                fontSize: 25,
                color: appcolor.colorwhite,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Perfect salon booking apps for your \n        beauty and comfortable life",
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
          myRaisesdButton(text: "Next", onPress: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => thirdscreen()));
          },)
        ],
      ),
    );
  }
}
