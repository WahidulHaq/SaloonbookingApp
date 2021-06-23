import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/appThemes.dart';
import 'package:saloonbooking_aap/models/messagemodel.dart';
import 'package:saloonbooking_aap/models/usermodel.dart';

class chatingscreen extends StatefulWidget {
  final user User;

  const chatingscreen({Key key, this.User}) : super(key: key);

  @override
  _chatingscreenState createState() => _chatingscreenState();
}

class _chatingscreenState extends State<chatingscreen> {
  _chatbubble(message Message, bool isMe, bool isSameUser) {
    if (isMe) {
      return Column(
        children: [
          Container(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 10),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.lightBlueAccent.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(
                Message.text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.white70),
              ),
            ),
          ),
          !isSameUser
              ? Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    Message.time,
                    style: TextStyle(color: appcolor.colorblack, fontSize: 12),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        Message.sender.imageurl,
                      ),
                      radius: 15.0,
                    ),
                  ),
                ])
              : Container(
                  child: null,
                )
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Container(
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(vertical: 10),
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.80),
              decoration: BoxDecoration(
                  color: appcolor.colorwhite,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
              child: Text(
                Message.text,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
          ),
          !isSameUser
              ? Row(children: [
                  Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.blue),
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 2)
                        ]),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        Message.sender.imageurl,
                      ),
                      radius: 15.0,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(Message.time)
                ])
              : Container(
                  child: null,
                )
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    int preUserId;
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        centerTitle: true,
        backgroundColor: appcolor.bgcolor,
        title: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(children: [
            TextSpan(
                text: widget.User.name,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            TextSpan(text: "\n"),
            widget.User.isOnline
                ? TextSpan(
                    text: "Online",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400))
                : TextSpan(
                    text: "offline",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                    ))
          ]),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: appcolor.colorwhite,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: EdgeInsets.all(20),
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                final message Message = messages[index];
                final bool isMe = Message.sender.id == currentuser.id;
                final bool isSameUser = preUserId == Message.sender.id;
                preUserId = Message.sender.id;

                return _chatbubble(Message, isMe, isSameUser);
              },
            ),
          ),
          isMessagearea(),
        ],
      ),
    );
  }

  isMessagearea() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: appcolor.colorwhite,
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.photo,
                size: 25,
                color: appcolor.colorgre,
              ),
              onPressed: () {}),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "Send a message",
              ),
              textCapitalization: TextCapitalization.sentences,
            ),
          ),
          IconButton(
              icon: Icon(
                Icons.send,
                size: 25,
                color: appcolor.colorgre,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
