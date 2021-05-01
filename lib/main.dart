import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/screens/forgotpassword.dart';
import 'package:saloonbooking_aap/screens/otppage.dart';
import 'package:saloonbooking_aap/screens/secondscreen.dart';
import 'package:saloonbooking_aap/screens/splashscreen.dart';
import 'package:saloonbooking_aap/screens/thirdscreen.dart';
import 'package:saloonbooking_aap/tabbar/dashboard.dart';
import 'package:saloonbooking_aap/tabbar/homepage.dart';
import 'package:saloonbooking_aap/tabbar/profilePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Saloon Appointment",
    home: splashscreen(),
  ));
}
