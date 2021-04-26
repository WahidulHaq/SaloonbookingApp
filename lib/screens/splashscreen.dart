import 'package:flutter/material.dart';


class splashscreen extends StatefulWidget {
  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("ABCDEFGH",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
