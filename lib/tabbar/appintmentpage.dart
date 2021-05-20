import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flappy_search_bar/search_bar_style.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class appointmentpage extends StatefulWidget {
  @override
  _appointmentpageState createState() => _appointmentpageState();
}

class _appointmentpageState extends State<appointmentpage> {
  String _date = "Not set";
  String _time = "Not set";
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
      backgroundColor: appcolor.bgcolor,
      body: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                ClipRRect(
                    child: Image.asset(
                  "assets/client3.jpeg",
                )),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: StreamBuilder(
                    builder: (context, snapshot) => searchbar(),
                  ),
                ),
                Padding(
                padding: EdgeInsets.only(left: 110,top: 255),
                  child: Text(
                    "Appointment ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: appcolor.colorwhite,fontSize: 30
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 150,left: 30),
                      child: Text(
                        "Select The Date",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appcolor.colorwhite,
                            fontSize: 14),
                      ),
                    ),
                    // *********** Date Picker
                    Container(
                      margin: EdgeInsets.only(left: 35,top: 10),
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        elevation: 4.0,
                        onPressed: () {
                          DatePicker.showDatePicker(context,
                              theme: DatePickerTheme(
                                  cancelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  doneStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  itemStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  containerHeight: 250),
                              showTitleActions: true,
                              minTime: DateTime(2000, 1, 1),
                              maxTime: DateTime(2022, 12, 31),
                              onConfirm: (date) {
                            print("confirm $date");
                            _date =
                                "${date.year} - ${date.month} - ${date.day}";
                            setState(
                              () {},
                            );
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.date_range,
                                          size: 20,
                                          color: appcolor.daterangecolor,
                                        ),
                                        Text(
                                          "$_date",
                                          style: TextStyle(
                                              color: appcolor.daterangecolor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "Change",
                                style: TextStyle(
                                    color: appcolor.daterangecolor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        color: appcolor.colorwhite,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30,top: 10),
                      child: Text(
                        "Select The Time",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: appcolor.colorwhite,
                            fontSize: 14),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 35,top: 10),
                      width: MediaQuery.of(context).size.width / 1.2,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        elevation: 4.0,
                        onPressed: () {
                          DatePicker.showTimePicker(context,
                              theme: DatePickerTheme(
                                  cancelStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  doneStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  itemStyle: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                  containerHeight: 250),
                              showTitleActions: true, onConfirm: (time) {
                            print('confirm $time');
                            _time =
                                '${time.hour} : ${time.minute} : ${time.second}';
                            setState(() {});
                          },
                              currentTime: DateTime.now(),
                              locale: LocaleType.en);
                          setState(() {});
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.access_time,
                                          size: 18.0,
                                          color: appcolor.daterangecolor,
                                        ),
                                        Text(
                                          " $_time",
                                          style: TextStyle(
                                              color: Colors.teal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "  Change",
                                style: TextStyle(
                                    color: Colors.teal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                            ],
                          ),
                        ),
                        color: appcolor.colorwhite,
                      ),
                    ),

                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      height: 50,
                      width: MediaQuery.of(context).size.width / 1.5,
                      child: MyRaisedButton(
                        text: "Book Now",
                        onPress: () {},
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}

//////*** SEARCH BAR ***** ////////
class Post {
  final String title;
  final String description;

  Post(this.title, this.description);
}

class searchbar extends StatelessWidget {
  Future<List<Post>> search(String search) async {
    await Future.delayed(Duration(seconds: 2));
    return List.generate(search.length, (int index) {
      return Post(
        "$search",
        "Description :$search $index",
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SearchBar<Post>(
          icon: Icon(
            Icons.search,
          ),
          searchBarStyle: SearchBarStyle(
            backgroundColor: Colors.white,
            padding: EdgeInsets.all(10),
            borderRadius: BorderRadius.circular(10),
          ),
          onSearch: search,
          onItemFound: (Post post, int index) {
            return Container(
              color: appcolor.colorwhite,
              child: ListTile(
                title: Text(post.title,style: TextStyle(color: Colors.black,fontSize: 18),),
                //subtitle: Text(post.description),
              ),
            );
          },
        ),
      ),
    );
  }
}
