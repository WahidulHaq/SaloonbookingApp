import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/screens/settingPage.dart';

class editprofilePage extends StatefulWidget {
  @override
  _editprofilePageState createState() => _editprofilePageState();
}

class _editprofilePageState extends State<editprofilePage> {
  final TextEditingController _controller = new TextEditingController();
  var items = ["Male", "Female"];
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => settingPage()));
            },
            icon: Icon(
              Icons.settings,
              color: appcolor.colorgre,
            ),
          )
        ],
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 3,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: appcolor.colorgre,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10,right: 10),

        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Text(
                "Edit Profile",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                                offset: Offset(0, 10))
                          ],
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 4,
                              color:
                                  Theme.of(context).scaffoldBackgroundColor)),
                      child: CircleAvatar(
                        backgroundImage: AssetImage("assets/persone.jpeg"),
                        radius: 50.0,
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 4,
                                  color: Theme.of(context)
                                      .scaffoldBackgroundColor),
                              color: Colors.green),
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildTextField("Mobile Number", "12345678910", false),
              buildTextField("Email Id", "Doralex@gmailc.om", false),
              buildTextField("Password", "***********", true),
              TextField(
                controller: _controller,
                decoration: InputDecoration(
                  suffixIcon: PopupMenuButton<String>(
                    icon: const Icon(Icons.arrow_drop_down),
                    onSelected: (String value) {
                      _controller.text = value;
                    },
                    itemBuilder: (BuildContext context) {
                      return items.map<PopupMenuItem<String>>((String value) {
                        return new PopupMenuItem(
                            child: new Text(
                              value,
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                            value: value);
                      }).toList();
                    },
                  ),
                ),
              ),
              // buildTextField("Gender", "Male", false),
              buildTextField("Address", "Sahara Airpot Mumbai ", false),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlineButton(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "CANCEL",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.black),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.green,
                    onPressed: () {},
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "SAVE",
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 2.2,
                          color: Colors.white),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildTextField(
    String labeltext, String placeholder, bool isPasswordtextfield) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 30),
    child: TextField(
      obscureText: isPasswordtextfield,
      decoration: InputDecoration(
          suffixIcon: isPasswordtextfield
              ? IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: appcolor.colorgre,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.only(bottom: 3),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: labeltext,
          hintText: placeholder,
          hintStyle: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black)),
    ),
  );
}
