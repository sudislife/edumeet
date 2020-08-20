import 'package:flutter/material.dart';
import 'package:EduMeet/misc/theme.dart';
import 'package:EduMeet/misc/constants.dart';

class NewGroup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Container(
          decoration: appBarDecoration,
        ),
        title: Text('New Group', style: headline2.copyWith(color: Colors.white)),
        actions: [
          Center(child: Text('Next', style: headline2.copyWith(color: Colors.white))),
          SizedBox(width: 10)
        ],
      ),

      backgroundColor: Color(lightGrey),

      body: Padding(
        padding: EdgeInsets.only(top: 20, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2
                ),
                borderRadius: BorderRadius.circular(50)
              ),

              child: Center(child: Text('Add Photo', style: headline2.copyWith(color: Color(darkTealish)))),
            ),

            SizedBox(height: 15),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Group Name', style: headline3.copyWith(color: Colors.black)),

                SizedBox(height: 15),

                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: OutlineInputBorder(),
                    labelText: 'Write your group name'
                  )
                ),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
