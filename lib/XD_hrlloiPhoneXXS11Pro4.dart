import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:flutter_svg/flutter_svg.dart';

class XD_hrlloiPhoneXXS11Pro4 extends StatelessWidget {
  XD_hrlloiPhoneXXS11Pro4({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(104.0, 100.0),
            child: Text(
              'Quarantine Courses',
              style: TextStyle(
                fontFamily: 'Helvetica Neue',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(141.0, 286.0),
            child: SvgPicture.string(
              _shapeSVG_762e4ed282b847659af5219d83638b66,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(111.0, 248.0),
            child: Container(
              width: 157.0,
              height: 146.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(78.5, 73.0)),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(66.0, 306.0),
            child: Container(
              width: 240.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _shapeSVG_762e4ed282b847659af5219d83638b66 =
    '<svg viewBox="141.0 286.0 101.0 135.0" ><path transform="translate(141.0, 286.0)" d="M 50.5 0 L 101 135 L 0 135 Z" fill="#ffffff" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
