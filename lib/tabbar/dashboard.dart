import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:carousel_pro/carousel_pro.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  List<String> imagestr = [
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
    "assets/categoryimg/haircut.jpeg",
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
  List<String> hairstyleName = [
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
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appcolor.colorwhite,
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
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
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Select your services",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: imagestr.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 5.0,
                          mainAxisSpacing: 5.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(80.0),
                                    child: Image.asset(
                                      imagestr[index],
                                      width: 100,
                                    ),
                                  ),
                                  Text(
                                    title[index],
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hair Specialist",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height/5,
                    child: PageView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagestr.length,
                      controller: PageController(viewportFraction: 0.4),
                      onPageChanged: (int index) =>
                          setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.7,
                          child: Card(
                              color: appcolor.bgcolor,
                              elevation: 6,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      imagestr[_index],
                                      width: 80,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      hairstyleName[_index],
                                      style: TextStyle(
                                          color: appcolor.colorwhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      hairstyleName[_index],
                                      style: TextStyle(
                                          color: appcolor.colorwhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
