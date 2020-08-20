import 'package:EduMeet/EduMeet/ChatPage/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: appBarDecoration,
        ),
        title:
            Text('Antone Zone', style: headline2.copyWith(color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 36, right: 20),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(usanet1),
                  ),
                  SizedBox(height: 24),
                  Text('MBA Crash Course Batch',
                      style: headline1.copyWith(color: Colors.black),
                      textAlign: TextAlign.center)
                ],
              ),
              SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Math',
                              style: headline1.copyWith(color: Colors.black)),
                          SizedBox(height: 5),
                          Text('Subject', style: bodyText)
                        ],
                      ),
                      Container(
                        height: 25,
                        width: 2,
                        color: Color(lightGrey),
                      ),
                      Column(
                        children: [
                          Text('75',
                              style: headline1.copyWith(color: Colors.black)),
                          SizedBox(height: 5),
                          Text('Hours', style: bodyText)
                        ],
                      ),
                      Container(
                        height: 25,
                        width: 2,
                        color: Color(lightGrey),
                      ),
                      Column(
                        children: [
                          Text('31st May',
                              style: headline1.copyWith(color: Colors.black)),
                          SizedBox(height: 5),
                          Text('Last Date', style: bodyText)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
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
                        ? Text(
                            'Follow',
                            style: TextStyle(color: Color(teal)),
                          )
                        : Text(
                            'Unfollow',
                            style: TextStyle(color: Color(teal)),
                          )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
