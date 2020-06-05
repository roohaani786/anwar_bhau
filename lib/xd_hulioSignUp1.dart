import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/specific_rect_clip.dart';

class xd_hulioSignUp1 extends StatelessWidget {
  xd_hulioSignUp1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(24.0, 595.0),
            child:
                // Adobe XD layer: 'Next' (component)
                Container(),
          ),
          Transform.translate(
            offset: Offset(24.0, 176.0),
            child:
                // Adobe XD layer: 'Input' (none)
                SpecificRectClip(
              rect: Rect.fromLTWH(0, 0, 327, 314),
              child: UnconstrainedBox(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 327,
                  height: 314,
                  child: GridView.count(
                    primary: false,
                    padding: EdgeInsets.all(0),
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 4,
                    crossAxisCount: 1,
                    childAspectRatio: 6.54,
                    children: [
                      {
                        'text': 'Full Name',
                      },
                      {
                        'text': 'Email',
                      },
                      {
                        'text': 'Birthday',
                      },
                      {
                        'text': 'Address',
                      },
                      {
                        'text': 'Password',
                      },
                    ].map((map) {
                      final text = map['text'];
                      return Transform.translate(
                        offset: Offset(-470.0, -490.0),
                        child:
                            // Adobe XD layer: 'Input' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(470.0, 490.0),
                              child: Container(
                                width: 327.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xffffffff),
                                  border: Border.all(
                                      width: 1.0,
                                      color: const Color(0xffbce0fd)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(486.0, 507.0),
                              child: Text(
                                text,
                                style: TextStyle(
                                  fontFamily: 'Arial',
                                  fontSize: 14,
                                  color: const Color(0xff2699fb),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(727.0, 510.0),
                              child: SizedBox(
                                width: 54.0,
                                child: Text(
                                  text,
                                  style: TextStyle(
                                    fontFamily: 'Arial',
                                    fontSize: 10,
                                    color: const Color(0xff2699fb),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
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
            offset: Offset(24.0, 113.0),
            child: Text(
              'Create an Account',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 20,
                color: const Color(0xff2699fb),
                fontWeight: FontWeight.w700,
                height: 1.5,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          // Adobe XD layer: 'Navigation Bar' (component)
          Container(),
        ],
      ),
    );
  }
}
