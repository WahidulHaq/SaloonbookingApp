import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/forgotpassword.dart';
import 'package:saloonbooking_aap/screens/signuppage.dart';
import 'package:saloonbooking_aap/tabbar/homepage.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final TextEditingController emailController = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  bool passwordVisible;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      body: SingleChildScrollView(
        child: Column(
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
              "Sign in account",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: appcolor.colorwhite,
                  fontSize: 25),
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
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormFieldWidget(
                controller: emailController,
                focusNode: emailFocusNode,
                obscureText: passwordVisible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: appcolor.colorwhite,
                  ),
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => forgotpassword()));
                    },
                    child: Text(
                      "Forgot your password",
                      style:
                          TextStyle(fontSize: 12, color: appcolor.colorwhite),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: MyRaisedButton(
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => homepage()));
                  },
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
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 40),
              width: MediaQuery.of(context).size.width / 1.2,
              child: RaisedButton(
                  onPressed: () {},
                  color: appcolor.facbookcolor,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          "assets/fblogo.png",
                          width: 40,
                        ),
                      ),
                      Divider(thickness: 2.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Login with Facebook",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: appcolor.colorwhite),
                        ),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width / 1.2,
              child: RaisedButton(
                  onPressed: () {},
                  color: appcolor.googlecolor.withOpacity(0.8),
                  child: Row(
                    children: [
                      Image.asset(

                        "assets/glogo.png",
                        width: 40,
                      ),
                      Divider(thickness: 2.0,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "Login with Google",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: appcolor.colorwhite),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
