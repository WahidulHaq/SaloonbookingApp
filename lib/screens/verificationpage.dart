import 'package:flutter/material.dart';
import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/loginpage.dart';

class verificationpage extends StatefulWidget {
  @override
  _verificationpageState createState() => _verificationpageState();
}

class _verificationpageState extends State<verificationpage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      /* appBar: AppBar(
        backgroundColor: Colors.green,

      ),*/
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
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
            "Enter the 4 - digit code \n    send to 123456789",
            style: TextStyle(
                fontSize: 25,
                color: appcolor.colorwhite,
                fontWeight: FontWeight.bold),
          ),
          //**********************Verification Code here ***************////////
          Container(
            margin: EdgeInsets.only(left: 90, right: 94, top: 30),
            width: MediaQuery.of(context).size.width / 1.2,
            color: Colors.white,
            height: 50,
            child: PinEntryTextField(
              showFieldAsBox: true,
              onSubmit: (String pin) {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: appcolor.bgcolor,
                        title: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/tick.png",
                              width: 70,
                            ),
                            Text(
                              "Successfully your \n   account done ",
                              style: TextStyle(
                                  color: appcolor.colorwhite,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Successfully create your account \n         now enjoy our apps",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 17),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 30),
                              width: MediaQuery.of(context).size.width / 1,
                              height: 50,
                              child: MyRaisedButton(
                                text: "OK",
                                onPress: () {
                                  Navigator.pop(context);
                                },
                              ),
                            )
                          ],
                        ),
                      );
                    }); //end showDialog()
              }, // end onSubmit
            ), // end PinEn,
          ),

          Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 30),
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              child: MyRaisedButton(
                text: "SIGN UP",
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => loginpage()));
                },
              )),
        ],
      ),
    );
  }
}
