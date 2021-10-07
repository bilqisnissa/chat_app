import 'package:chat_app/theme.dart';
import 'package:chat_app/view/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String profileImage;
  final String contactName;
  final String lastChat;
  final String timeChat;

  const ChatTile(
      {required this.profileImage,
      required this.contactName,
      required this.lastChat,
      required this.timeChat});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ChatScreen()));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            profileImage,
            width: 55.0,
          ),
          SizedBox(width: 24.0,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(contactName, style: blackTextStyle.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600),
              ),
              Text(lastChat, style: darkGreyTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          ),
          SizedBox(width: 54.0,),
          Text(timeChat, style: darkGreyTextStyle.copyWith(fontSize: 13.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
