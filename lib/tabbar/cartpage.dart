import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';

class cartpage extends StatefulWidget {
  @override
  _cartpageState createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.colorwhite,

      body:Container(child: Center(child: Text("This is CartPage",style: TextStyle(fontSize: 30),),),),
    );
  }
}
