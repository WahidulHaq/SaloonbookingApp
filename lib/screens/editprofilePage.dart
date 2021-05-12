import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter/material.dart';

class editprofilePage extends StatefulWidget {
  @override
  _editprofilePageState createState() => _editprofilePageState();
}

class _editprofilePageState extends State<editprofilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        elevation: 3,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
          onPressed: () {},
        ),
      ),
      body: Container(
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
              buildTextField("Full Name","Dor Alex"),
              buildTextField("Full Name","Dor Alex"),
              buildTextField("Full Name","Dor Alex"),
              buildTextField("Full Name","Dor Alex"),

            ],
          ),
        ),
      ),
    );
  }
}
TextField buildTextField(String labeltext, String placeholder){
  return TextField(
    decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labeltext,
        hintText: placeholder,
        hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black)),
  );
}
