import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/specific_rect_clip.dart';

class xd_hulioSignUp extends StatelessWidget {
  xd_hulioSignUp({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1f9ff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(24.0, 595.0),
            child:
                // Adobe XD layer: 'Continue' (component)
                Container(),
          ),
          // Adobe XD layer: 'Account Signup' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(24.0, 100.0),
                child: Container(
                  width: 327.0,
                  height: 439.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(48.0, 202.0),
                child:
                    // Adobe XD layer: 'Input' (none)
                    SpecificRectClip(
                  rect: Rect.fromLTWH(0, 0, 279, 240),
                  child: UnconstrainedBox(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 279,
                      height: 240,
                      child: GridView.count(
                        primary: false,
                        padding: EdgeInsets.all(0),
                        mainAxisSpacing: 16,
                        crossAxisSpacing: 20,
                        crossAxisCount: 1,
                        childAspectRatio: 5.8125,
                        children: [
                          {
                            'text': 'Full Name',
                          },
                          {
                            'text': 'Email',
                          },
                          {
                            'text': 'Password',
                          },
                          {
                            'text': 'Confirm Password',
                          },
                        ].map((map) {
                          final text = map['text'];
                          return Transform.translate(
                            offset: Offset(-470.0, -281.0),
                            child:
                                // Adobe XD layer: 'Input' (group)
                                Stack(
                              children: <Widget>[
                                Transform.translate(
                                  offset: Offset(470.0, 281.0),
                                  child: Container(
                                    width: 279.0,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffffffff),
                                      border: Border.all(
                                          width: 1.0,
                                          color: const Color(0xffbce0fd)),
                                    ),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(490.0, 297.0),
                                  child: Text(
                                    text,
                                    style: TextStyle(
                                      fontFamily: 'Arial',
                                      fontSize: 14,
                                      color: const Color(0xffbce0fd),
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
              Transform.translate(
                offset: Offset(83.0, 143.0),
                child: SizedBox(
                  width: 210.0,
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 20,
                      color: const Color(0xff2699fb),
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(82.0, 468.33),
                child: SizedBox(
                  width: 212.0,
                  child: Text(
                    'By creating an account you agree to our\nTerms of Service and Privacy Policy',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 10,
                      color: const Color(0xff2699fb),
                      height: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
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
