import 'package:chat_app/theme.dart';
import 'package:chat_app/view/chat_tile.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: double.infinity,
              margin: EdgeInsets.only(top: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/profile.png',
                    width: 150.0,
                    height: 150.0,
                  ),
                  Text('Harry James Potter',
                      style: whiteTextStyle.copyWith(fontSize: 18.0)),
                  Text(
                    'Students',
                    style: blueTextStyle.copyWith(fontSize: 15.0),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0)),
                color: Colors.white,
              ),
              margin: EdgeInsets.only(top: 242.0),
              width: double.infinity,
              height: double.infinity,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Friend',
                        style: blueTextStyle.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ChatTile(
                          profileImage: 'assets/images/cedric.png',
                          contactName: 'Deadric',
                          lastChat: 'Yesterday lol, you send me...',
                          timeChat: 'Now'),
                      SizedBox(
                        height: 16.0,
                      ),
                      ChatTile(
                          profileImage: 'assets/images/ron.png',
                          contactName: 'Ronron',
                          lastChat: 'I saw you eat my chicken...',
                          timeChat: '11.10'),
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'Groups',
                        style: blueTextStyle.copyWith(
                            fontSize: 18.0, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      ChatTile(
                          profileImage: 'assets/images/swag_snape.png',
                          contactName: 'Swag Snape',
                          lastChat: 'Draco: Why does everyone ca...',
                          timeChat: '12.45'),
                      SizedBox(
                        height: 16.0,
                      ),
                      ChatTile(
                          profileImage: 'assets/images/sweet_talk.png',
                          contactName: 'Sweet Talk',
                          lastChat: 'Ron: How abt tomorrow?',
                          timeChat: '11.10'),
                      SizedBox(
                        height: 16.0,
                      ),
                      ChatTile(
                          profileImage: 'assets/images/dumbledore_army.png',
                          contactName: 'Dumbledore Army',
                          lastChat: 'Luna: i’m searching for scr...',
                          timeChat: '11.10'),
                      SizedBox(height: 15,),
                      Center(
                          child: Image.asset(
                        'assets/images/btn.png',
                        width: 90.0,
                        height: 90.0,
                      ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
