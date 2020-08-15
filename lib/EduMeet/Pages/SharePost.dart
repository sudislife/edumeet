import 'package:EduMeet/misc/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:EduMeet/misc/constants.dart';
import 'package:EduMeet/misc/scaler.dart';

class SharePost extends StatelessWidget {
  double paddingSides;

  SharePost() {
    this.paddingSides = 20;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(lightGrey),
        // appBar: AppBar(
        //   centerTitle: true,
        //   flexibleSpace: Container(
        //     decoration: appBarDecoration,
        //   ),
        //   title: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       SizedBox(width: 2),
        //       Text('Next', style: headline2.copyWith(color: Colors.white))
        //     ],
        //   ),
        // ),
        body: Padding(
          padding: EdgeInsets.only(
              left: paddingSides, top: paddingSides, right: paddingSides),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: Row(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: NetworkImage(unsplashImage3),
                            height: 80,
                            width: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text('Write a caption',
                              style: bodyText2.copyWith(
                                  color: Color(thereIsYetAnotherGrey))),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Text("Tag People",
                        style: bodyText2.copyWith(color: Color(blackish))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 14.0),
                    child: Text("Add Location",
                        style: bodyText2.copyWith(color: Color(blackish))),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, bottom: 80),
                child: Container(
                  height: 44,
                  decoration: BoxDecoration(
                      color: Color(teal),
                      borderRadius: BorderRadius.circular(5)),
                  child:
                      Center(child: Text('Share Now', style: buttonTextStyle)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
