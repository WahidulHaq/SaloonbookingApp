import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:saloonbooking_aap/helper/constant.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  ConstantVaeriable constant = ConstantVaeriable();
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
    "assets/servicesimages/menipedi.jpeg",
    "assets/servicesimages/waxing.jpg",
    "assets/servicesimages/detoxspa.jpg",
    "assets/servicesimages/whiteskin.jpg",
  ];
  List<String> sliderimage = [
    "assets/client2.jpeg",
    "assets/client3.jpeg",
    "assets/client4.jpeg",
    "assets/client5.jpeg",
    "assets/client6.jpeg",
    "assets/client7.jpeg",
    "assets/client_01.jpeg",
  ];
  List<String> cardImages = [
    "assets/hairstyler/bibek.jpg",
    "assets/hairstyler/joseph.jpg",
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appcolor.colorwhite,
        body: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 16, top: 30),
                        height: 200,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: sliderimage.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              margin: EdgeInsets.all(10),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  children: [
                                    Image.asset(sliderimage[index]),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                         Expanded(
                           flex: 2,
                           child: GridView.builder(
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: cardImages.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 5.0,
                              mainAxisSpacing: 5.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                  isThreeLine: true,
                                  title: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      cardImages[index],
                                      height: 150,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  subtitle: Column(
                                    children: [
                                      Text(
                                        "Find The Hairstylist \nNear You ",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "Book you Favourite Hair Stylist",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ],
                                  ));
                            },
                        ),
                         ),

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Book appoointment with top \nspecialist hairstylist in your city",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Over 40 lakh satisfied Customer Stories to help you choose",
                          style: TextStyle(fontWeight: FontWeight.w500,color: appcolor.colorgre),
                        ),
                      ),
                     /* Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2.0,
                        ),
                      ),*/

                      ///******* GRIDEVIEW PAGE *********/////
                      GrideViewPage()
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

class GrideViewPage extends StatefulWidget {
  @override
  _GrideViewPageState createState() => _GrideViewPageState();
}

class _GrideViewPageState extends State<GrideViewPage> {
  List<String> serviceImages = [
    "assets/servicesimages/bearcut.jpg",
    "assets/servicesimages/facial.jpg",
    "assets/servicesimages/haircut.jpg",
    "assets/servicesimages/haircolor.jpg",
    "assets/servicesimages/hairspa.jpg",
    "assets/servicesimages/menipedi.jpeg",
    "assets/servicesimages/waxing.jpg",
    "assets/servicesimages/detoxspa.jpg",
    "assets/servicesimages/whiteskin.jpg",
  ];

  List<String> titleName = [""];
  List<String> description = [""];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: GridView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
        ),
        itemCount: serviceImages.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Image.asset(serviceImages[index]),
            subtitle: Column(
              children: [

              ],
            ),
          );
        },
      ),
    );
  }
}
