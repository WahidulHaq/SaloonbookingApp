import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/verificationpage.dart';

class otppage extends StatefulWidget {
  @override
  _otppageState createState() => _otppageState();
}

class _otppageState extends State<otppage> {
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
            "Send OTP For Verification \n             Your Account",
            style: TextStyle(
                fontSize: 25,
                color: appcolor.colorwhite,
                fontWeight: FontWeight.bold),
          ),
          Container(
            margin: EdgeInsets.only(left: 50, right: 50, top: 30),
            child: TextFormFieldWidget(
              controller: _controller,
              hintText: "Enter Mobile Number ",
              textInputType: TextInputType.number,
              maxLenght: 10,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 50, right: 50, top: 30),
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              child: MyRaisedButton(
                text: "SEND OTP",
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => verificationpage()));
                },
              )),
        ],
      ),
    );
  }
}
