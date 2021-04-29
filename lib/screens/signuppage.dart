import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/screens/loginpage.dart';
import 'package:saloonbooking_aap/screens/verificationpage.dart';

class signuppage extends StatefulWidget {
  @override
  _signuppageState createState() => _signuppageState();
}

class _signuppageState extends State<signuppage> {
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController retypecontroller = TextEditingController();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode retypepasswordFocusNode = FocusNode();

  bool passwordVisible;
  bool retypePasswordVisbible;
  bool _checkbox = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      passwordVisible = true;
      retypePasswordVisbible = true;
    });
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
                  "assets/client3.jpeg",
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
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormFieldWidget(
                controller: emailcontroller,
                focusNode: emailFocusNode,
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
                controller: passwordcontroller,
                focusNode: passwordFocusNode,
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
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormFieldWidget(
                focusNode: retypepasswordFocusNode,
                controller: retypecontroller,
                obscureText: retypePasswordVisbible,
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      retypePasswordVisbible = !retypePasswordVisbible;
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
            Row(
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 17,
                    ),
                    child: Checkbox(
                        checkColor: Colors.white,
                        activeColor: Colors.grey,
                        value: _checkbox,
                        onChanged: (value) {
                          setState(() {
                            _checkbox = !_checkbox;
                          });
                        }),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    text: 'I accept the ',
                    children: <TextSpan>[
                      TextSpan(
                        text: 'policy and terms',
                        style: TextStyle(decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: MyRaisedButton(
                  text: "SIGN UP",
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => verificationpage()));
                  },
                )),
            Container(
              margin: EdgeInsets.only(top: 40),
              child: RichText(
                text: TextSpan(
                  text: 'Already have account?',
                  style: TextStyle(fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sign In ',
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.green,
                          fontSize: 15),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => loginpage()));
                        },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
