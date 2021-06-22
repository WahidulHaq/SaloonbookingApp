import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/chatscreen/chatingscreen.dart';
import 'package:saloonbooking_aap/main.dart';
import 'package:saloonbooking_aap/models/messagemodel.dart';
import 'package:saloonbooking_aap/tabbar/dashboard.dart';

class chatapp extends StatefulWidget {
  @override
  _chatappState createState() => _chatappState();
}

class _chatappState extends State<chatapp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appcolor.colorwhite,
        appBar: AppBar(
          elevation: 8.0,
          backgroundColor: appcolor.bgcolor,
          title: Text(
            "Index",
            style: TextStyle(color: appcolor.colorwhite),
          ),
          centerTitle: true,
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
        body: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (BuildContext context, int index) {
              final message chat = chats[index];
              return GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => chatingscreen(User:chat.sender,))),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: chat.unread
                            ? BoxDecoration(
                                border: Border.all(
                                    width: 2,
                                    color: Theme.of(context).primaryColor),
                                shape: BoxShape.circle,
                                boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ])
                            : BoxDecoration(
                                border:
                                    Border.all(width: 2, color: Colors.black26),
                                borderRadius: BorderRadius.circular(40),
                                boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 2)
                                  ]),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(chat.sender.imageurl),
                          radius: 30.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width * 0.65,
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: [
                                    Text(
                                      chat.sender.name,
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    chat.sender.isOnline
                                        ? Container(
                                            margin: EdgeInsets.only(left: 5),
                                            width: 7,
                                            height: 7,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.black26),
                                          )
                                        : Container(
                                            child: null,
                                          )
                                  ],
                                ),
                                Text(
                                  chat.time,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 11,
                                      color: appcolor.colorgre),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                chat.text,
                                style: TextStyle(
                                    fontSize: 13, color: appcolor.colorgre),
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
