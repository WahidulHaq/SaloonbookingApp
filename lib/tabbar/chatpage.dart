import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';

class chatapp extends StatefulWidget {
  @override
  _chatappState createState() => _chatappState();
}

class _chatappState extends State<chatapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Chat Page",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
