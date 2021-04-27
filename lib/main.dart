import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/screens/otppage.dart';
import 'package:saloonbooking_aap/screens/secondscreen.dart';
import 'package:saloonbooking_aap/screens/splashscreen.dart';
import 'package:saloonbooking_aap/screens/thirdscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Saloon Appointment",
    home: splashscreen(),
  ));
}
