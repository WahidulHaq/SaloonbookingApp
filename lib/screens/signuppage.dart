import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';

class signuppage extends StatefulWidget {
  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      body: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
              child: Image.asset(
                "assets/client3.jpeg",
              )),
          Text(
            "Create New Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: appcolor.colorwhite,
                fontSize: 25),
          ),
          TextFormFieldWidget(
              hintText: "demo@gmai.com",
            prefixIcon: Icon(Icons.email),



          )
        ],
      ),
    );
  }
}
