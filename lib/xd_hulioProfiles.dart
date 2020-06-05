import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/specific_rect_clip.dart';

class xd_hulioProfiles extends StatelessWidget {
  xd_hulioProfiles({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Hero' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(32.0, 92.0),
                child:
                    // Adobe XD layer: 'Profile' (component)
                    Container(),
              ),
              Transform.translate(
                offset: Offset(0.0, 7.0),
                child:
                    // Adobe XD layer: 'Name' (group)
                    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(104.0, 90.0),
                      child: Text(
                        'John Doe',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 14,
                          color: const Color(0xff2699fb),
                          fontWeight: FontWeight.w700,
                          height: 1.7142857142857142,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(104.0, 108.0),
                      child: Text(
                        'San Francisco, CA',
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 10,
                          color: const Color(0xff2699fb),
                          height: 2.4,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(25.0, 14.0),
                child:
                    // Adobe XD layer: '+' (group)
                    Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(278.0, 86.0),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(20.0, 20.0)),
                          color: const Color(0xff2699fb),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(290.0, 98.0),
                      child:
                          // Adobe XD layer: '+' (component)
                          Container(),
                    ),
                  ],
                ),
              ),
              Transform.translate(
                offset: Offset(32.0, 174.0),
                child: SizedBox(
                  width: 311.0,
                  height: 88.0,
                  child: SingleChildScrollView(
                      child: Text(
                    'Hi! My name is John, I’m a creative geek from San Francisco, CA. I enjoy creating eye candy solutions for web and mobile apps. Contact me at john@mail.com',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff2699fb),
                      height: 1.7142857142857142,
                    ),
                    textAlign: TextAlign.left,
                  )),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(32.0, 300.0),
            child:
                // Adobe XD layer: 'Information' (none)
                SpecificRectClip(
              rect: Rect.fromLTWH(0, 0, 310, 98),
              child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 310,
                  height: 98,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(0),
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 8,
                    crossAxisCount: 3,
                    childAspectRatio: 1,
                    children: [
                      {
                        'text': 'Projects',
                      },
                      {
                        'text': 'Followers',
                      },
                      {
                        'text': 'Following',
                      },
                    ].map((map) {
                      final text = map['text'];
                      return Transform.translate(
                        offset: Offset(-32.0, -300.0),
                        child:
                            // Adobe XD layer: 'Information' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(32.0, 300.0),
                              child: Container(
                                width: 98.0,
                                height: 98.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xfff1f9ff),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(52.0, 326.0),
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 14,
                                  color: const Color(0xff2699fb),
                                  fontWeight: FontWeight.w700,
                                  height: 1.7142857142857142,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(52.0, 346.0),
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 13,
                                  color: const Color(0xff2699fb),
                                  height: 1.8461538461538463,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ),
          ),
          // Adobe XD layer: 'Project' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(32.0, 606.0),
                child: Container(
                  width: 311.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                    color: const Color(0xfff1f9ff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(308.0, 627.0),
                child: Container(),
              ),
              Transform.translate(
                offset: Offset(32.0, 430.0),
                child: Container(
                  width: 311.0,
                  height: 176.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffbce0fd),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(52.0, 626.0),
                child:
                    // Adobe XD layer: 'Likes/Comments' (component)
                    Container(),
              ),
            ],
          ),
          // Adobe XD layer: 'Navigation Bar' (component)
          Container(),
        ],
      ),
    );
  }
}
