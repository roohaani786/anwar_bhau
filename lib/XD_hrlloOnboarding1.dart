import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class XD_hrlloOnboarding1 extends StatelessWidget {
  final VoidCallback tappu;
  XD_hrlloOnboarding1({
    Key key,
    this.tappu,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'bg' (shape)
          Container(
            width: 375.0,
            height: 375.0,
            decoration: BoxDecoration(
              color: const Color(0xfff1f9ff),
            ),
          ),
          // Adobe XD layer: 'Title' (group)
          Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(96.0, 55.0),
                child:
                    // Adobe XD layer: 'Discover' (text)
                    SizedBox(
                  width: 184.0,
                  child: Text(
                    'Discover',
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 40,
                      color: const Color(0xff2699fb),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Transform.translate(
                offset: Offset(30.0, 113.0),
                child:
                    // Adobe XD layer: 'Excepteur sint occa…' (text)
                    SizedBox(
                  width: 315.0,
                  height: 40.0,
                  child: SingleChildScrollView(
                      child: Text(
                    'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt ',
                    style: TextStyle(
                      fontFamily: 'Arial',
                      fontSize: 14,
                      color: const Color(0xff2699fb),
                      height: 1.7142857142857142,
                    ),
                    textAlign: TextAlign.center,
                  )),
                ),
              ),
            ],
          ),
          Transform.translate(
            offset: Offset(161.0, 512.0),
            child:
                // Adobe XD layer: 'Pagination' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'Ellipse 8' (shape)
                Container(
                  width: 6.0,
                  height: 6.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.elliptical(3.0, 3.0)),
                    color: const Color(0xff2699fb),
                  ),
                ),
                Transform.translate(
                  offset: Offset(16.0, 0.0),
                  child:
                      // Adobe XD layer: 'Ellipse 9' (shape)
                      Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(3.0, 3.0)),
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(32.0, 0.0),
                  child:
                      // Adobe XD layer: 'Ellipse 10' (shape)
                      Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(3.0, 3.0)),
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(48.0, 0.0),
                  child:
                      // Adobe XD layer: 'Ellipse 11' (shape)
                      Container(
                    width: 6.0,
                    height: 6.0,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(3.0, 3.0)),
                      color: const Color(0xffbce0fd),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(108.0, 254.0),
            child:
                // Adobe XD layer: 'Illustration' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(-322.0, -267.0),
                  child:
                      // Adobe XD layer: 'illustration' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(322.0, 267.0),
                        child:
                            // Adobe XD layer: 'Ellipse 243' (shape)
                            Container(
                          width: 160.0,
                          height: 160.0,
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(80.0, 80.0)),
                            color: const Color(0xffbce0fd),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(402.0, 267.0),
                        child:
                            // Adobe XD layer: 'Path 234' (shape)
                            SvgPicture.string(
                          _shapeSVG_540b462049934977b5399563a67f9ef3,
                          allowDrawingOutsideViewBox: true,
                        ),
                      ),
                    ],
                  ),
                ),
                Transform.translate(
                  offset: Offset(0, 0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 160.0,
                      height: 160.0,
                      child: GestureDetector(onTap: () => tappu?.call()),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(24.0, 595.0),
            child:
                // Adobe XD layer: 'Start' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'Rectangle 119' (shape)
                Container(
                  width: 327.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: const Color(0xff2699fb),
                  ),
                ),
                Transform.translate(
                  offset: Offset(126.0, 19.0),
                  child:
                      // Adobe XD layer: 'LET’S START' (text)
                      SizedBox(
                    width: 76.0,
                    child: Text(
                      'LET’S START',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 10,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                        height: 1.2,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _shapeSVG_540b462049934977b5399563a67f9ef3 =
    '<svg viewBox="402.0 267.0 80.0 136.6" ><path transform="translate(322.0, 267.0)" d="M 80 0 L 80 80 L 136.6000061035156 136.6000061035156 C 151 122.0999984741211 160 102.0999984741211 160 80 C 160 35.79999923706055 124.1999969482422 0 80 0 Z" fill="#2699fb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
