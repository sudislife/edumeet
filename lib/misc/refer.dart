import 'package:dotted_border/dotted_border.dart';
// import 'package:educrack/doubt_pages/StudentDoubt.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Refer extends StatefulWidget {
  Refer({Key key}) : super(key: key);

  @override
  _ReferState createState() => _ReferState();
}

// TextStyle buttonTextStyle = TextStyle(
//     fontWeight: FontWeight.bold,
//     fontFamily: GoogleFonts.sourceSansPro().fontFamily,
//     color: Colors.white);

class _ReferState extends State<Refer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(darkTealish),
        elevation: 0,
        title: Text(
          "Reward Points",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 52),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Share this referral code with your friends to get extra benefits.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              SizedBox(
                height: 40,
              ),
              DottedBorder(
                  color: Color(teal),
                  strokeWidth: 1,
                  radius: Radius.circular(10),
                  dashPattern: [6],
                  borderType: BorderType.RRect,
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Center(
                      child: Text(
                        "REFFERALCODE",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(teal)),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.content_copy, color: Colors.grey),
                    SizedBox(width: 10),
                    Text('Copy this code', style: TextStyle(color: Colors.grey))
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.whatsapp,
                    ),
                    Icon(
                      FontAwesomeIcons.facebookF,
                      color: Colors.blue,
                    ),
                    Icon(
                      FontAwesomeIcons.shareAlt,
                      color: Color(teal),
                      size: 22,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Text(
                'When your friend registers, you both get 500 points each.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
