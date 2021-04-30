import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';

class appointmentpage extends StatefulWidget {
  @override
  _appointmentpageState createState() => _appointmentpageState();
}

class _appointmentpageState extends State<appointmentpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("This is Appointment Page",style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
