import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/signuppage.dart';

class fourthscreen extends StatefulWidget {
  @override
  _fourthscreenState createState() => _fourthscreenState();
}

class _fourthscreenState extends State<fourthscreen> {
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
              child: Image.asset("assets/instrumnet.png")),
          Text(
            "Keep it Clean ",
            style: TextStyle(
                fontSize: 25,
                color: appcolor.colorwhite,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "Perfect salon booking apps for your \n        beauty and comfortable life",
            style: TextStyle(fontSize: 17, color: Colors.grey),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: SizedBox(
                height: 40,
                width: 140,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    // side: BorderSide(color: appcolor.colorwhite)
                  ),
                  color: Colors.green,
                  elevation: 5.0,
                  splashColor: Colors.black,
                  animationDuration: Duration(seconds: 2),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signuppage()));
                  },
                  child: Text(
                    "GET STARTED",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: appcolor.colorwhite),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
