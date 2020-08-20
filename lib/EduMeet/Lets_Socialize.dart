import 'package:EduMeet/EduMeet/ChatPage/screens/NewGroup.dart';
import 'package:EduMeet/EduMeet/ChatPage/screens/chat_screen.dart';
import 'package:EduMeet/EduMeet/Pages/Chat.dart';
import 'package:EduMeet/EduMeet/Pages/SharePost.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';
import 'package:EduMeet/misc/scaler.dart';
import 'package:EduMeet/EduMeet/Pages/Socialize.dart';

class Lets_Socialize extends StatefulWidget {
  @override
  _Lets_SocializeState createState() => _Lets_SocializeState();
}

class _Lets_SocializeState extends State<Lets_Socialize> {
  var _intt = 0;
  @override
  Widget build(BuildContext context) {
    PageController pageController =
        PageController(initialPage: _intt, keepPage: true);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Lets Socialize',
          style: buttonTextStyle,
        ),
        flexibleSpace: Container(
          decoration: appBarDecoration,
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return NewGroup();
              }));
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('New Group', style: TextStyle(fontSize: 15)),
            ),
          )
        ],
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (currentIndex) {
          setState(() {
            _intt = currentIndex;
          });
        },
        children: <Widget>[
          Socialize(),
          Socialize(),
          SharePost(),
          Chat(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12.0)),
        child: Builder(
          builder: (context) => BottomNavigationBar(
              selectedLabelStyle:
                  TextStyle(color: Theme.of(context).accentColor),
              selectedItemColor: Theme.of(context).accentColor,
              unselectedItemColor: Colors.black45,
              currentIndex: _intt,
              onTap: (currentIndex) {
                setState(() {
                  _intt = currentIndex;
                  pageController.animateToPage(_intt,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn);
                });
              },
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(LineAwesomeIcons.home),
                  ),
                  title: Text("home"),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(LineAwesomeIcons.search),
                  ),
                  title: Text("Search"),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(LineAwesomeIcons.upload),
                  ),
                  title: Text("Upload"),
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(LineAwesomeIcons.paper_plane),
                  ),
                  title: Text("Chat"),
                ),
              ]),
        ),
      ),
    );
  }
}
