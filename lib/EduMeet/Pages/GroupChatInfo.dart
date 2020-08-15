import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/theme.dart';

class GroupChatInfo extends StatelessWidget {
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
            padding: EdgeInsets.only(left: 40, top: 36, right: 40),
            child: Column(
              children: [
                Column(
                  children: <Widget> [
                    CircleAvatar (
                      radius: 50,
                      backgroundImage: NetworkImage(usanet1),
                    ),

                    SizedBox(height: 24),

                    Text(loremIpsum, style: bodyText, textAlign: TextAlign.center)
                  ],
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Participants: 5', style: bodyText2.copyWith(color: Color(darkTealish)), textAlign: TextAlign.left),
                      // Participants
                      Column(
                        children: [
                          participant(name: 'Harsh', admin: true),
                          participant(name: 'CD', admin: false),
                          participant(name: 'CD', admin: false),
                          participant(name: 'Sud', admin: true),
                          participant(name: 'CD', admin: false),
                        ],
                      )
                    ],
                  ),
                )

              ],
            ),
          ),
      ),
    );
  }
}

class participant extends StatelessWidget {
  @override

  String name;
  bool admin;

  participant({
    @required
    this.name,
    this.admin
  });

  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 0, right: 0),
      leading: CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(usanet1),
      ),

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: bodyText3.copyWith(color: Color(thereIsYetAnotherGrey))),

          Container(
            decoration: BoxDecoration(
              border: Border.all(color: admin == true ? Color(darkTealish): Colors.transparent),
                borderRadius: BorderRadius.circular(17)
            ),
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Text("Group Admin", style: bodyText2.copyWith(
                fontSize: 10,
                color: admin == true ? Color(darkTealish): Colors.transparent,
              )),
            ),
          )
        ],
      ),
    );
  }
}

