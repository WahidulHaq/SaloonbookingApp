import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/helper/constant.dart';
import 'package:carousel_slider/carousel_slider.dart';

class dashboard extends StatefulWidget {
  @override
  _dashboardState createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  //ConstantVaeriable constant = ConstantVaeriable();

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
    "assets/hairstyler/drew.jpg",
    "assets/hairstyler/jonas.jpg",
    "assets/hairstyler/joseph.jpg",
    "assets/hairstyler/kal.jpg",
    "assets/hairstyler/mahdi.jpg",
    "assets/hairstyler/mattsing.jpg",
    "assets/hairstyler/saffu.jpg",
    "assets/hairstyler/valerie.jpg",
  ];
  ScrollController _controller;
  List<String> toolsimages = [
    "assets/toolsimages/ourtools1.jpg",
    "assets/toolsimages/ourtools2.jpg",
    "assets/toolsimages/ourtools3.jpg",
    "assets/toolsimages/ourtools4.jpg",
    "assets/toolsimages/ourtools5.jpg",
    "assets/toolsimages/ourtools6.jpg",
    "assets/toolsimages/ourtools7.jpg",
    "assets/toolsimages/ourtools8.jpg",
    "assets/toolsimages/ourtools9.jpg",
  ];

  int _index = 0;

  Container myCardWidget(String ImageValue, String title, String subtitle) {
    return Container(
      width: 160.0,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Wrap(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10), topLeft: Radius.circular(10)),
              child: Image.asset(
                ImageValue,
              ),
            ),
            ListTile(
              title: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              subtitle: Text(subtitle),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolor.colorwhite,
      body: SingleChildScrollView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width / 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
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
              Container(
                margin: EdgeInsets.only(top: 30),
                height: MediaQuery.of(context).size.height / 2.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    myCardWidget(
                        "assets/hairstyler/bibek.jpg",
                        "Find The HairStylist Near You ",
                        "Book Your appointment"),
                    myCardWidget(
                        "assets/hairstyler/mahdi.jpg",
                        "Find The HairStylist Near You",
                        "Find the experiance hairstylist"),
                    myCardWidget(
                        "assets/hairstyler/saffu.jpg",
                        "Find The HairStylist Near You ",
                        "Book Your appointment"),
                    myCardWidget(
                        "assets/hairstyler/kal.jpg",
                        "Find The HairStylist Near You",
                        "Find the experiance hairstylist"),
                    myCardWidget(
                        "assets/hairstyler/joseph.jpg",
                        "Find The HairStylist Near You ",
                        "Book Your appointment")
                  ],
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
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: appcolor.colorgre),
                ),
              ),
              GrideViewPage(),
              SizedBox(
                height: 30,
              ),
              Center(
                child: RaisedButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1.0, color: appcolor.bgcolor),
                      borderRadius: BorderRadius.circular(5)),
                  onPressed: () {},
                  child: Text("View All Specialist"),
                ),
              ),
              Divider(
                thickness: 2.0,
              ),
              Text(
                "Our HairStyler Tools ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                margin: EdgeInsets.only(right: 16, top: 10),
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
                            Image.asset(toolsimages[index]),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Usable tools for your hair style",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: appcolor.colorwhite),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Text(
                                    "Lorem Ipsum is simply dummy text\nuse for printing and type script'",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: appcolor.colorwhite),
                                    textAlign: TextAlign.center,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(

                children: [
                  Flexible(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Loreum Tools\nand stylist"),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "assets/toolsimages/ourtools1.jpg",
                                width: 60,
                                height: 60,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Flexible(
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Loreum Tools\nand stylist"),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Image.asset(
                                  "assets/toolsimages/ourtools2.jpg",
                                  width: 60,
                                  height: 60,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GrideViewPage extends StatefulWidget {
  @override
  _GrideViewPageState createState() => _GrideViewPageState();
}

class _GrideViewPageState extends State<GrideViewPage> {
  // This is Widget for the GrideView Page /////

  Container myCardWidget(String ImageValue, String title, String subtitle) {
    return Container(
      width: 160.0,
      child: Card(
        child: Wrap(
          children: [
            Center(
              child: Container(
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
                        color: Theme.of(context).scaffoldBackgroundColor)),
                child: CircleAvatar(
                  backgroundImage: AssetImage(ImageValue),
                  radius: 50.0,
                ),
              ),
            ),
            ListTile(
              title: Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(bottom: 0),
                child: Text(
                  subtitle,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 30),
        height: MediaQuery.of(context).size.height / 1.6,
        child: GridView(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
          scrollDirection: Axis.vertical,
          children: [
            myCardWidget("assets/servicesimages/bearcut.jpg", "BeardCut",
                "Book Your appointment"),
            myCardWidget("assets/servicesimages/facial.jpg", "Facial",
                "Find the experiance hairstylist"),
            myCardWidget("assets/servicesimages/haircut.jpg", "HairCut ",
                "Book Your appointment"),
            myCardWidget("assets/servicesimages/hairspa.jpg", "HairSpa",
                "Find the experiance hairstylist"),
            myCardWidget("assets/servicesimages/menipedi.jpeg", "ManiPedi ",
                "Book Your appointment"),
            myCardWidget("assets/servicesimages/waxing.jpg", "Waxing",
                "Book You appoitmnet"),
            myCardWidget("assets/servicesimages/detoxspa.jpg", "Detox",
                "Book You appoitmnet"),
            myCardWidget("assets/servicesimages/bearcut.jpg", " BeardCut",
                "Book Your appointment"),
          ],
        ),
      ),
    );
  }
}
