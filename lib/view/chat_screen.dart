import 'dart:ui';

import 'package:chat_app/theme.dart';
import 'package:chat_app/view/chat_message.dart';
import 'package:chat_app/view/chat_user_message.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 110.0,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 24.0),
              decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16.0)),
                  color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/dumbledore_army.png',
                    width: 55.0,
                  ),
                  SizedBox(
                    width: 24.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dumbledore Army',
                          style: blueTextStyle.copyWith(
                              fontSize: 20.0, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '18 members',
                          style: darkGreyTextStyle.copyWith(
                              fontSize: 13.0, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 54.0,
                  ),
                  Image.asset(
                    'assets/images/btn_call.png',
                    width: 100.0,
                    height: 100.0,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  ChatMessage(
                      profileMessage: 'assets/images/seamus.png',
                      chatMessage: 'How are ya guys?',
                      timeMessage: '2:30'),
                  SizedBox(
                    height: 10.0,
                  ),
                  ChatMessage(
                      profileMessage: 'assets/images/hermione.png',
                      chatMessage: 'Fine here :P',
                      timeMessage: '3:11'),
                  SizedBox(
                    height: 10.0,
                  ),
                  ChatUserMessage(
                      profileMessage: 'assets/images/harry.png',
                      chatMessage:
                          'Thinking abt how to deal with this client from hell..',
                      timeMessage: '22:08'),
                  SizedBox(
                    height: 20.0,
                  ),
                  ChatMessage(profileMessage: 'assets/images/luna.png', chatMessage: 'Love them..', timeMessage: '23:11'),
                  SizedBox(height: 45.0,),
                  Container(
                    height: 54.0,
                    width: 450.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30.0)),
                      color: Colors.white,
                    ),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Type Message...',
                            style: greyTextStyle.copyWith(fontSize: 16.0),
                          ),
                          SizedBox(width: 250.0,),
                          Image.asset('assets/images/btn_send.png', width: 35.0, height: 35.0,),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
