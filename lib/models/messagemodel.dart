import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/models/usermodel.dart';

class message {
  final user sender;
  final String time;
  final String text;
  final bool unread;

  message({this.sender,this.text,this.time,this.unread});
}
// EXAMPLE CHAT ON HOME SCREEN//

List<message> chats = [
  message(
    sender:  drew,
    time: "5.30 pm",
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
    unread: false
  ),
  message(
      sender:  jonas,
      time: "4.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true
  ),
  message(
      sender:  joshep,
      time: "3.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: false
  ),
  message(
      sender:  mahdi,
      time: "2.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true
  ),
  message(
      sender:  mattsing,
      time: "1.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true
  ),
  message(
      sender:  saffu,
      time: "1.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true
  ),
  message(
      sender:  valerie,
      time: "12.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true
  )
];