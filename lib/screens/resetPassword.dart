import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';

class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  final TextEditingController retypepasscontroller = TextEditingController();
  final TextEditingController _typepasscontroller = TextEditingController();
  final TextEditingController _emailcontroller  = TextEditingController();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passFocusNode = FocusNode();
  FocusNode _retypeFocusNode = FocusNode();
  bool passwordVisible;
  bool visiblepassword;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordVisible = true;
    visiblepassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.bgcolor,
      appBar: AppBar(
        backgroundColor: appcolor.bgcolor,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
                bottomRight: Radius.circular(100),
              ),
              child: Image.asset("assets/client5.jpeg"),
            ),
            Text(
              "Re - set paassword ",
              style: TextStyle(
                  fontSize: 25,
                  color: appcolor.colorwhite,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              width: MediaQuery.of(context).size.width / 1.2,
              child: TextFormFieldWidget(
                controller: _emailcontroller,
                focusNode: _emailFocusNode,
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
                focusNode: _passFocusNode,
                controller: _typepasscontroller,
                obscureText: passwordVisible,
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: appcolor.colorwhite,
                    size: 20,
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
                focusNode: _retypeFocusNode,
                controller: retypepasscontroller,
                obscureText: visiblepassword,
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      visiblepassword = !visiblepassword;
                    });
                  },
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    color: appcolor.colorwhite,
                    size: 20,
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
                margin: EdgeInsets.only(top: 40),
                width: MediaQuery.of(context).size.width / 1.2,
                height: 50,
                child: MyRaisedButton(
                  text: "SIGN IN",
                  onPress: () {
                    
                  },
                )),
          ],
        ),
      ),
    );
  }
}
