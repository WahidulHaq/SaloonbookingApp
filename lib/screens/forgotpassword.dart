import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/screens/resetPassword.dart';

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
              width: MediaQuery.of(context).size.width / 1.2,
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
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: MyRaisedButton(
                  onPress: () {
                    return showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              backgroundColor: appcolor.bgcolor,
                              content: Container(
                                width: 350.0,
                                height: 350.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Image.asset(
                                      "assets/tick.png",
                                      width: 70,
                                    ),
                                    Text(
                                      "Code has been sent to reset a new password ",
                                      style: TextStyle(
                                          color: appcolor.colorwhite,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Successfully create your account \n         now enjoy our apps",
                                      style: TextStyle(
                                          color: Colors.grey, fontSize: 17),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(top: 30),
                                      width:
                                          MediaQuery.of(context).size.width / 1,
                                      height: 50,
                                      child: MyRaisedButton(
                                        text: "DONE",
                                        onPress: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      resetPassword()));
                                        },
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ));
                  },
                  text: "SEND CODE",
                )),
          ],
        ),
      ),
    );
  }
}
