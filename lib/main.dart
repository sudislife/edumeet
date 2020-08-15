import 'package:EduMeet/EduMeet/ChatPage/screens/chat_screen.dart';
import 'package:EduMeet/EduMeet/Lets_Socialize.dart';
import 'package:EduMeet/EduMeet/Pages/GroupChatInfo.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(darkTealish),
        scaffoldBackgroundColor: Color(alsoAlmostWhite),
        fontFamily: GoogleFonts.sourceSansPro().fontFamily,
      ),
      home: GroupChatInfo(),
    );
  }
}
