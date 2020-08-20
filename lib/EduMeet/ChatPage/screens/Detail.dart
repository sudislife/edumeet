import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: appBarDecoration,
        ),
        title: Text('Antone Zone', style: headline2.copyWith(color: Colors.white)),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 36, right: 20),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget> [
                  CircleAvatar (
                    radius: 50,
                    backgroundImage: NetworkImage(usanet1),
                  ),

                  SizedBox(height: 24),

                  Text('MBA Crash Course Batch', style: headline1.copyWith(color: Colors.black), textAlign: TextAlign.center)
                ],
              ),

              SizedBox(height: 20),

              Container(

                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text('Math', style: headline1.copyWith(color: Colors.black)),
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
                          Text('75', style: headline1.copyWith(color: Colors.black)),
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
                          Text('31st May', style: headline1.copyWith(color: Colors.black)),
                          SizedBox(height: 5),
                          Text('Last Date', style: bodyText)
                        ],
                      ),
                    ],
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