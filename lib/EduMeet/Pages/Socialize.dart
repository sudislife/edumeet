import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:EduMeet/EduMeet/Lets_Socialize.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:EduMeet/misc/scaler.dart';
import 'package:outline_material_icons/outline_material_icons.dart';

class Socialize extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(lightGrey),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 0),
                  child: Card(
                    child: Container(
                      //first Card
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 14, top: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Subject-Wise Analysis ',
                                    style: headline6.copyWith(fontSize: 16)),
                                Text('Of previous Year paper',
                                    style: headline6.copyWith(fontSize: 16)),
                                Text('UPSE CSE',
                                    style: buttonTextStyle.copyWith(
                                        color: Color(teal), fontSize: 15)),
                                Text('Preliminary Exams',
                                    style: buttonTextStyle.copyWith(
                                        color: Color(teal), fontSize: 15)),
                                Container(
                                    margin: EdgeInsets.only(top: 5, bottom: 5),
                                    height: 1,
                                    width: 100,
                                    decoration:
                                        BoxDecoration(color: Color(lightGrey))),
                                Row(children: <Widget>[
                                  Text("Pre Smart. Score better. Go"),
                                  Text("Educrack",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold))
                                ]),

                                SizedBox(height: 10)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Image(
                                image: AssetImage(
                                  'assets/3.png',
                                ),
                                width: 122),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(),
                Main_card(
                  avatarimage: NetworkImage(
                      'https://www.usanetwork.com/sites/usanetwork/files/2018/07/suits_cast_harvey_s8.jpg'),
                  c_image: AssetImage('assets/2.png'),
                  name: 'Mukesh Saini',
                  occupation: 'QA,MBA',
                  views: 400,
                  comments: 14,
                  description: loremIpsum,
                ),
                Main_card(
                  avatarimage: NetworkImage(
                      'https://www.usanetwork.com/sites/usanetwork/files/2018/07/suits_cast_harvey_s8.jpg'),
                  c_image: AssetImage('assets/2.png'),
                  name: 'Mukesh Saini',
                  occupation: 'QA,MBA',
                  views: 400,
                  comments: 14,
                  description: loremIpsum,
                ),
                Main_card(
                  avatarimage: NetworkImage(
                      'https://www.usanetwork.com/sites/usanetwork/files/2018/07/suits_cast_harvey_s8.jpg'),
                  c_image: AssetImage('assets/2.png'),
                  name: 'Mukesh Saini',
                  occupation: 'QA,MBA',
                  views: 400,
                  comments: 14,
                  description: loremIpsum,
                ),
                Main_card(
                  avatarimage: NetworkImage(
                      'https://www.usanetwork.com/sites/usanetwork/files/2018/07/suits_cast_harvey_s8.jpg'),
                  c_image: AssetImage('assets/2.png'),
                  name: 'Mukesh Saini',
                  occupation: 'QA,MBA',
                  views: 400,
                  comments: 14,
                  description: loremIpsum,
                ),
              ],
            ),
          ),
        ));
  }
}

class Main_card extends StatelessWidget {
  Main_card(
      {@required AssetImage this.c_image,
      NetworkImage this.avatarimage,
      String this.name,
      String this.occupation,
      String this.description,
      int this.views,
      int this.comments});
  NetworkImage avatarimage;
  String name;
  String occupation;
  AssetImage c_image;
  String description;
  int views;
  int comments;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 20.0, right: 20.0),
      child: Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(children: <Widget>[
          //user name and qualifications with photo
          ListTile(
            contentPadding: EdgeInsets.only(left: 16.0),
            leading: CircleAvatar(radius: 20, backgroundImage: avatarimage),
            title: Text(name, style: headline6),
            subtitle: Text(occupation, style: caption2),
          ),

          //display photo
          Image(
            image: c_image,
          ),

          //Question to be displayed
          Container(
            margin: EdgeInsets.only(
                left: 16.0, right: 33.0, top: 16.0, bottom: 16.0),
            child: Text(description, style: bodyText),
          ),
          //need to ask for a better way to do it.
          //views and answers
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('$views views'),
                Text('$comments Comments', textAlign: TextAlign.center),
              ],
            ),
          ),
          Divider(),

          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(OMIcons.thumbUp, color: Color(thereIsYetAnotherGrey)),
                    SizedBox(width: 5),
                    Text('Likes', style: commentText)
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(OMIcons.comment, color: Color(thereIsYetAnotherGrey)),
                    SizedBox(width: 5),
                    Text('Comment', style: commentText),
                  ],
                )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Icon(OMIcons.bookmarkBorder,
                        color: Color(thereIsYetAnotherGrey)),
                    SizedBox(width: 5),
                    Text('Save', style: commentText),
                  ],
                )),
              ],
            ),
          ),

          Divider(),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Container(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 15,
                  backgroundImage: avatarimage,
                ),
                title: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Write a comment',
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
