import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/forgotpassword.dart';
import 'package:saloonbooking_aap/screens/signuppage.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
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
                "assets/client6.jpeg",
              )),
          Text(
            "Create New Account",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: appcolor.colorwhite,
                fontSize: 25),
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
            margin: EdgeInsets.only(top: 30),
            width: MediaQuery
                .of(context)
                .size
                .width / 1.2,
            child: TextFormFieldWidget(
              obscureText: true,
              suffixIcon: Icon(
                Icons.remove_red_eye,
                color: appcolor.colorwhite,
              ),
              hintText: "Type Password",
              prefixIcon: Icon(
                Icons.lock,
                color: appcolor.colorwhite,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 15),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => forgotpassword()));
                  },
                  child: Text(
                    "Forgot your password",
                    style: TextStyle(fontSize: 12, color: appcolor.colorwhite),
                  ),
                )
              ],
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
                text: "SIGN IN",
              )),
          Container(
            margin: EdgeInsets.only(top: 10, left: 31),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    text: "if you don't create account?",
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Sign Up ',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.green,
                            fontSize: 15),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => signuppage()));
                          },
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
