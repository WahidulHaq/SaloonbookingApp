import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';

class forgotpassword extends StatefulWidget {
  @override
  _forgotpasswordState createState() => _forgotpasswordState();
}

class _forgotpasswordState extends State<forgotpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      appBar: AppBar(
        backgroundColor: appcolor.bgcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(100),
                ),
                child: Image.asset(
                  "assets/client4.jpeg",
                )),
            Text(
              "Forget Password ",
              style: TextStyle(
                  fontSize: 25,
                  color: appcolor.colorwhite,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "    Please enter your email You will receive \n a code to create a new password via email",
              style: TextStyle(fontSize: 17, color: Colors.grey),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 1.2,
              child: TextFormFieldWidget(
                hintText: "demo@gmail.com",
                prefixIcon: Icon(
                  Icons.email,
                  color: appcolor.colorwhite,
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.2,
                height: 50,
                child: MyRaisedButton(
                  onPress: () {},
                  text: "SEND CODE",
                )),
          ],
        ),
      ),
    );
  }
}
