import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:carousel_pro/carousel_pro.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
    "Bibek",
    "Drew",
    "Jonas",
    "Joseph",
    "Kal almond",
    "Mahdi",
    "Matt sing",
    "Saffu",
    "Valerie"
  ];
  List<String> imagestr = [
    "assets/hairstyler/bibek.jpg",
    "assets/hairstyler/drew.jpg",
    "assets/hairstyler/jonas.jpg",
    "assets/hairstyler/joseph.jpg",
    "assets/hairstyler/kal.jpg",
    "assets/hairstyler/mahdi.jpg",
    "assets/hairstyler/mattsing.jpg",
    "assets/hairstyler/saffu.jpg",
    "assets/hairstyler/valerie.jpg",

  ];
  List<String> serviceImages = [
    "assets/servicesimages/bearcut.jpg",
    "assets/servicesimages/facial.jpg",
    "assets/servicesimages/haircut.jpg",
    "assets/servicesimages/haircolor.jpg",
    "assets/servicesimages/hairspa.jpg",
    "assets/servicesimages/menipedi.jpg",
    "assets/servicesimages/waxing.jpg",
    "assets/servicesimages/detoxspa.jpg",
    "assets/servicesimages/whiteskin.jpg",
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appcolor.colorwhite,
        body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
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
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: imagestr.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
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
                                      serviceImages[index],
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
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  // *********** HAIR SPECIALIST **************//
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imagestr.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 16),
                          child: Stack(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  imagestr[index],
                                  width: 120,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(

                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      color: Colors.black26),
                                  width: 120,
                                  height: 100,
                                  alignment: Alignment.center,
                                  child: Text(
                                    hairstyleName[index],
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: appcolor.colorwhite),
                                  ))
                            ],
                          ),
                        );
                      },
                    ),
                  )
                  // Container(
                  //   height: MediaQuery.of(context).size.height/6,
                  //   child: PageView.builder(
                  //     scrollDirection: Axis.horizontal,
                  //     itemCount: imagestr.length,
                  //     controller: PageController(viewportFraction: 0.4),
                  //     onPageChanged: (int index) =>
                  //         setState(() => _index = index),
                  //     itemBuilder: (_, i) {
                  //       return Transform.scale(
                  //         scale: i == _index ? 1 : 0.7,
                  //         child: Card(
                  //             color: appcolor.bgcolor,
                  //             elevation: 6,
                  //             shape: RoundedRectangleBorder(
                  //                 borderRadius: BorderRadius.circular(20)),
                  //             child: Column(
                  //               children: [
                  //                 ClipRRect(
                  //                   borderRadius: BorderRadius.circular(20),
                  //                   child: Image.asset(
                  //                     imagestr[_index],
                  //                     width: 80,
                  //                     fit: BoxFit.fitWidth,
                  //                   ),
                  //                 ),
                  //                 Padding(
                  //                   padding: const EdgeInsets.all(8.0),
                  //                   child: Text(
                  //                     hairstyleName[_index],
                  //                     style: TextStyle(
                  //                         color: appcolor.colorwhite,
                  //                         fontWeight: FontWeight.bold,
                  //                         fontSize: 15),
                  //                   ),
                  //                 ),
                  //               ],
                  //             )),
                  //       );
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ));
  }
}
