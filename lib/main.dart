import 'package:chat_app/view/chat_screen.dart';
import 'package:chat_app/view/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(Chatty());

class Chatty extends StatelessWidget {
  const Chatty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => HomeScreen(),
        '/chat' : (context) => ChatScreen(),
      },
    );
  }
}