import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/models/usermodel.dart';

class chatingscreen extends StatefulWidget {
  final user User;

  const chatingscreen({Key key, this.User}) : super(key: key);

  @override
  _chatingscreenState createState() => _chatingscreenState();
}

class _chatingscreenState extends State<chatingscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        backgroundColor: appcolor.bgcolor,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.User.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            TextSpan(text: "\n"),
            TextSpan(
                text: "Online",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
          ]),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: appcolor.colorwhite,),
        ),
      ),

      body: Container(
        child: Text("sddjbnfj"),
      ),
    );
  }
}
