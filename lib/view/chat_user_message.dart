import 'package:chat_app/theme.dart';
import 'package:flutter/material.dart';

class ChatUserMessage extends StatelessWidget {
  final String profileMessage;
  final String chatMessage;
  final String timeMessage;

  const ChatUserMessage(
      {required this.profileMessage,
      required this.chatMessage,
      required this.timeMessage});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25.0),
                topLeft: Radius.circular(25.0),
                topRight: Radius.circular(25.0),
              ),
              color: Colors.white,
            ),
            width: 255.0,
            height: 96.0,
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    chatMessage,
                    style: blueTextStyle.copyWith(fontSize: 16.0),
                  ),
                  SizedBox(
                    height: 4.0,
                  ),
                  Text(
                    timeMessage,
                    style: darkGreyTextStyle.copyWith(fontSize: 14.0),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 8.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 40.0),
            child: Image.asset(
              profileMessage,
              width: 40.0,
              height: 40.0,
            ),
          ),
        ],
      ),
    );
  }
}
