import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:carousel_pro/carousel_pro.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  List<String> imagestr = [
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
    "assets/client2.jpeg",
  ];
  List<String> title = [
    "BeardCut",
    "Facial",
    "HairCut",
    "HairColor",
    "HairSpa",
    "ManiPedi",
    "Waxing",
    "Detox",
    "White Skin Care"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.colorwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            child: Carousel(
              images: [
                AssetImage("assets/client2.jpeg"),
                AssetImage("assets/client3.jpeg"),
                AssetImage("assets/client4.jpeg"),
                AssetImage("assets/client5.jpeg"),
                AssetImage("assets/client6.jpeg")
              ],
              dotSize: 2.0,
              dotSpacing: 10.0,
              dotColor: Colors.lightGreenAccent,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.purple.withOpacity(0.5),
              borderRadius: false,
              moveIndicatorFromBottom: 180.0,
              noRadiusForIndicator: true,
              overlayShadow: true,
              overlayShadowColors: Colors.white,
              overlayShadowSize: 0.7,
            ),
          ),
          Text(
            "Select your services",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Container(
            child: Expanded(
              flex:1,
              child: GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: imagestr.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: <Widget>[
                      ClipRRect(

                        borderRadius: BorderRadius.circular(100.0),
                        child: Image.asset(imagestr[index]),
                      ),
                      //Image.asset(imagestr[index]),
                      Text(title[index],style: TextStyle(fontSize: 17),),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
