import 'dart:core';
import 'package:flutter/cupertino.dart';
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
              SizedBox(
                height: 10,
              ),
              buildDivider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Best offers for you",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              //////////////////****************////////////////
              rategrideviewPage(),

              SizedBox(
                height: 20,
              ),
              buildDivider(),

              Container(
                margin: EdgeInsets.only(top: 20),
                child: GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    children: List.generate(choices.length, (index) {
                      return Center(
                        child: SelectCard(choice: choices[index]),
                      );
                    })),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                color: appcolor.facbookcolor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/bh_hairSalonLogo.png',
                        width: 150, height: 200),
                    Text(
                      "Even geniuses can get things wrong. Look at Einstein’s unfortunate choice of "
                          "a hairdresser, Joss Stirling Blessed are the hairstylists"
                      " Anonymous It doesn’t matter if your life is perfect as long as "
                          "your hair color is. ",
                      style: TextStyle(color: appcolor.colorwhite,fontSize: 20,fontWeight: FontWeight.w600),
                    ),
                    Text("Made by Hair Saloon @ Technosys",style: TextStyle(color: appcolor.colorwhite,fontSize: 20),)
                  ],
                ),
              )
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

class rategrideviewPage extends StatefulWidget {
  const rategrideviewPage({Key key}) : super(key: key);

  @override
  _rategrideviewPageState createState() => _rategrideviewPageState();
}

class _rategrideviewPageState extends State<rategrideviewPage> {
  List<String> categorstyeNametitle = [
    "Beard Cut With hair Style",
    "Combo Offerr With Family Pack",
    "Mani Pedi Pack",
    "Bridal for Wedding ",
    "Groom For Wedding Pack ",
    "Completed Hair Style",
    "Compete Facial Pack",
    "Complete Hair Spa ",
    "Waxing all Body ",
    "Completed Hair Style",
  ];
  List<String> rate = [
    "299",
    "599",
    "349",
    "1099",
    "1099",
    "299",
    "459",
    "799",
    "699",
    "799",
  ];
  List<String> packageImageb = [
    "assets/packagesImages/bearcutoffer.jpg",
    "assets/packagesImages/bearcutoffer.jpg",
    "assets/packagesImages/maniopedi.jpg",
    "assets/packagesImages/bridal.jpg",
    "assets/packagesImages/groom.jpg",
    "assets/categoryimg/haircut.jpeg",
    "assets/packagesImages/facialpacj.jpg",
    "assets/packagesImages/hairspa.jpg",
    "assets/packagesImages/waxing.jpg",
    "assets/packagesImages/hairspa.jpg",
  ];
  List<String> discount = [
    "Upto 15% OFF",
    "Upto 15% OFF",
    "Upto 20% OFF",
    "10% Bridal caseback*",
    "Upto 10% OFF",
    "Upto 10% OFF",
    "10% Facial cashback* ",
    "Upto 15% OFF",
    "15% Body Waxing cashback*",
    "Upto 15% OFF",
  ];

  @override
  Widget build(BuildContext context) {
    final columnCount = 2;
    final width = MediaQuery.of(context).size.width / columnCount;
    const height = 350;
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(10.0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: width / height,
        crossAxisCount: columnCount,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
      ),
      itemCount: packageImageb.length,
      itemBuilder: (BuildContext contect, int index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 10.0,
          child: InkWell(
            onTap: null,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          packageImageb[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // height: 250,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                  ),
                  Text(
                    "₹ ${rate[index]}",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categorstyeNametitle[index],
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      discount[index],
                      style: TextStyle(fontSize: 15, color: Colors.purple),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Choice {
  const Choice({this.title, this.icon, this.subtitle});

  final String title;
  final IconData icon;
  final String subtitle;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: 'Our User', subtitle: '1 Crores', icon: Icons.person),
  const Choice(
      title: 'Our hair Stylist',
      subtitle: '1 lakh',
      icon: Icons.business_center),
  const Choice(title: 'Saloons', subtitle: '10,000', icon: Icons.business),
  const Choice(
      title: 'Our Customer Stories', subtitle: '2 lakh', icon: Icons.message),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key key, this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.white,
        child: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(choice.icon, size: 50.0, color: appcolor.facbookcolor),
                Text(choice.title,
                    style: TextStyle(
                        fontSize: 15,
                        color: appcolor.colorgre,
                        fontWeight: FontWeight.bold)),
                Text(
                  choice.subtitle,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                )
              ]),
        ));
  }
}
