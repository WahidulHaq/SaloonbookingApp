import 'package:flutter/material.dart';
import 'package:saloonbooking_aap/models/usermodel.dart';

class message {
  final user sender;
  final String time;
  final String text;
  final bool unread;

  message({this.sender, this.text, this.time, this.unread});
}
// EXAMPLE CHAT ON HOME SCREEN//

List<message> chats = [
  message(
      sender: drew,
      time: "5.30 pm",
      text: "Hey dude! Even dead I\'m the hero. Love you 3000 guys.",
      unread: false),
  message(
      sender: jonas,
      time: "4.30 pm",
      text: 'Hey, how\'s it going? What did you do today?',
      unread: true),
  message(
      sender: joshep,
      time: "3.30 pm",
      text: 'WOW! this soul world is amazing, but miss you guys.',
      unread: false),
  message(
      sender: mahdi,
      time: "2.30 pm",
      text: 'I\'m exposed now. Please help me to hide my identity.',
      unread: true),
  message(
      sender: mattsing,
      time: "1.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true),
  message(
      sender: saffu,
      time: "1.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true),
  message(
      sender: valerie,
      time: "12.30 pm",
      text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit,",
      unread: true)
];



// EXAMPLE MESSAGE IN CHAT SCREEEN///
List<message> messages = [
  message(
    sender: drew,
    time: "5:30 PM",
    text: "Hi  dude Event dead i am the hero ,love 300 guys",
    unread: true,
  ),
  message(
    sender: currentuser,
    time: "4:30 PM",
    text: "We could surely hendle this mess much easlity if you were here ",
    unread: true,
  ),
  message(
    sender: drew,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '3:15 PM',
    text: 'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '2:30 PM',
    text: 'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    unread: true,
  ),
  message(
    sender: currentuser,
    time: '2:30 PM',
    text: 'Yes Tony!',
    unread: true,
  ),
  message(
    sender: drew,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    unread: true,
  ),
];
