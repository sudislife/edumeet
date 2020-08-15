import 'package:EduMeet/EduMeet/ChatPage/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';
import 'dart:math';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //     centerTitle: true,
      //     flexibleSpace: Container(
      //       decoration: appBarDecoration,
      //     ),
      //     title: Text('Next', style: headline2.copyWith(color: Colors.white))),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            children: <Widget>[
              card(
                  image: unsplashImage4,
                  head: 'MBA  Crash Course Batch',
                  subhead: 'Group: Batch'),
              card(
                  image: unsplashImage4,
                  head: 'Kumar Santosh',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Shubhendu Ghosh',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Sachin Tendulkar',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Virat Kohli',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Kshitiz Bhardwaj',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Suman Malhotra',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Priya Rastogi',
                  subhead: 'Delhi,  UPSC'),
              card(
                  image: unsplashImage4,
                  head: 'Suman Malhotra',
                  subhead: 'Delhi,  UPSC'),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  String head, subhead, image;
  card({@required this.image, this.head, this.subhead});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ChatScreen();
          }));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(image),
                          radius: 22.5,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            head,
                            style: headline3.copyWith(color: Color(blackish)),
                          ),
                          Text(subhead,
                              style: GraySansText.copyWith(
                                  color: Color(thereIsAnotherGrey)))
                        ],
                      )
                    ],
                  )),
              Padding(
                  padding: const EdgeInsets.only(right: 19),
                  child: Transform.rotate(
                      angle: -pi * 45 / 180,
                      child: Icon(
                        LineAwesomeIcons.paper_plane,
                        size: 15,
                        color: Colors.black,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
