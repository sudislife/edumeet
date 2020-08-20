import 'package:EduMeet/EduMeet/ChatPage/screens/chat_screen.dart';
import 'package:EduMeet/EduMeet/Lets_Socialize.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Add_in_group extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Create',
              style: buttonTextStyle.copyWith(fontSize: 20),
            ),
          )
        ],
        title: Column(
          children: [
            Text(
              'Lets Socialize',
              style: buttonTextStyle,
            ),
            Text('4/50 Selected')
          ],
        ),
        flexibleSpace: Container(
          decoration: appBarDecoration,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(4))),
                  child: ListTile(
                      leading: Icon(Icons.search),
                      title: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Write a comment',
                        ),
                      ))),
              SizedBox(height: 10),
              Text(
                'No. of Students (50)',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 5),
              card(
                image: unsplashImage4,
                head: 'MBA  Crash Course Batch',
                subhead: 'Group: Batch',
                check: true,
              ),
              card(
                image: unsplashImage4,
                head: 'Kumar Santosh',
                subhead: 'Delhi,  UPSC',
                check: true,
              ),
              card(
                image: unsplashImage4,
                head: 'Shubhendu Ghosh',
                subhead: 'Delhi,  UPSC',
                check: true,
              ),
              card(
                image: unsplashImage4,
                head: 'Sachin Tendulkar',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
              card(
                image: unsplashImage4,
                head: 'Virat Kohli',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
              card(
                image: unsplashImage4,
                head: 'Kshitiz Bhardwaj',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
              card(
                image: unsplashImage4,
                head: 'Suman Malhotra',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
              card(
                image: unsplashImage4,
                head: 'Priya Rastogi',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
              card(
                image: unsplashImage4,
                head: 'Suman Malhotra',
                subhead: 'Delhi,  UPSC',
                check: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  String head, subhead, image;
  bool check;
  card({@required this.image, this.head, this.subhead, this.check});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: InkWell(
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
                  angle: 0,
                  child: check
                      ? Icon(
                          LineAwesomeIcons.check_circle,
                          size: 20,
                          color: Color(teal),
                        )
                      : Icon(
                          LineAwesomeIcons.circle,
                          size: 20,
                          color: Color(teal),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
