import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/screens/editprofilePage.dart';
import 'package:saloonbooking_aap/screens/splashscreen.dart';
import 'package:saloonbooking_aap/tabbar/dashboard.dart';
import 'package:saloonbooking_aap/tabbar/homepage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Saloon Appointment",
    home: homepage(),
  ));
}
