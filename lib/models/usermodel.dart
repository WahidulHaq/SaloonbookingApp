import 'package:flutter/material.dart';

class user {
  final int id;
  final String name;
  final String imageurl;
  final bool isOnline;

  user({this.name,this.id,this.imageurl,this.isOnline});
}
final user currentuser = user(
  id: 0,
  name: "Bibek",
  imageurl: "assets/hairstyler/bibek.jpg",
  isOnline: true

);
// USEr//
final user drew = user(
  id: 1,
  name: "Drew",
  imageurl: "assets/hairstyler/drew.jpg",
  isOnline: true
);
final user jonas = user(
    id: 1,
    name: "Jonas",
    imageurl:  "assets/hairstyler/jonas.jpg",
    isOnline: false
);
final user joshep = user(
    id: 1,
    name: "Jopeph",
    imageurl:  "assets/hairstyler/joseph.jpg",
    isOnline: false
);
final user kal = user(
    id: 1,
    name: "Kal",
    imageurl:  "assets/hairstyler/kal.jpg",
    isOnline: true
);
final user mahdi = user(
    id: 1,
    name: "Mahdi",
    imageurl:  "assets/hairstyler/mahdi.jpg",
    isOnline: true
);
final user mattsing = user(
    id: 1,
    name: "MattSing",
    imageurl:   "assets/hairstyler/mattsing.jpg",
    isOnline: false
);
final user saffu = user(
    id: 1,
    name: "Saffu",
    imageurl:   "assets/hairstyler/saffu.jpg",
    isOnline: false
);
final user valerie = user(
    id: 1,
    name: "Valerie",
    imageurl: "assets/hairstyler/valerie.jpg",
    isOnline: true
);