import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class GeneralTabscreen extends StatefulWidget {
  @override
  _GeneralTabscreenState createState() => _GeneralTabscreenState();
}

bool _switchValue = false;
bool _switchValue2 = false;
bool _switchValue3 = false;

class _GeneralTabscreenState extends State<GeneralTabscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [

          Container(

            margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
            decoration: BoxDecoration(
              color: Color(0xff0f2f2f2),
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(-1, -1),
                    //color: Colors.white
                    color: Colors.white)
              ],
            ),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  shape: NeumorphicShape.concave,
                  depth: 2,
                  intensity: 10,
                  shadowLightColor: Colors.white,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 1.h, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Account Details',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Mukta',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 1.h, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'You can edit your information about your\nemail address,phone number or physical address',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'Mukta',
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 1.h, 0, 0),
                        alignment: Alignment.center,
                        child: Text('UPI',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 1.h, 3.w, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.transparent,
                                ),
                              ],
                              color: Colors.blue[400]),
                          child: Hero(
                            tag: '4',
                            child: Icon(Icons.arrow_right_alt_rounded,
                                color: Colors.white, size: 15.sp),
                          )),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                        child: Text('Auto Payment',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                          //width: 50,
                          //padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            // color: Color(0xff002860),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 2,
                                  blurRadius: 15,
                                  offset: Offset(-5, -3),
                                  color: Colors.white)
                            ],
                          ),
                          child: Transform.scale(
                            transformHitTests: true,
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                              activeColor: Colors.blue[400],
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _switchValue = !_switchValue;
                          });
                        },
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                        child: Text('Finger Print',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                          //width: 50,
                          //padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color(0xff002860),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 15,
                                    offset: Offset(-5, -3),
                                    color: Colors.white)
                              ]),
                          child: Transform.scale(
                            transformHitTests: true,
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: _switchValue2,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue2 = value;
                                });
                              },
                              activeColor: Colors.blue[400],
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _switchValue = !_switchValue;
                          });
                        },
                      ),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 1.h, 0, 0),
                        alignment: Alignment.center,
                        child: Text('Passcode',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 1.h, 4.w, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                new BoxShadow(
                                  color: Colors.transparent,
                                ),
                              ],
                              color: Colors.blue[400]),
                          child: Hero(
                            tag: '3',
                            child: Icon(Icons.arrow_right_alt_rounded,
                                color: Colors.white, size: 15.sp),
                          )),
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                        child: Text('Notifications',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                          //width: 50,
                          //padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Color(0xff002860),
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 15,
                                    offset: Offset(-5, -3),
                                    color: Colors.white)
                              ]),
                          child: Transform.scale(
                            transformHitTests: true,
                            scale: 0.8,
                            child: CupertinoSwitch(
                              value: _switchValue3,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue3 = value;
                                });
                              },
                              activeColor: Colors.blue[400],
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            _switchValue = !_switchValue;
                          });
                        },
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Manage if you want to receive\nupdates about promotion,features or news',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'Mukta',
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                        child: Text('Language Preferences',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(0, 1.h, 4.w, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.transparent,
                                  ),
                                ],
                                color: Colors.blue[400]),
                            child: Hero(
                              tag: '2',
                              child: Icon(Icons.arrow_right_alt_rounded,
                                  color: Colors.white, size: 14.sp),
                            )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('loreum ipsum dolar emmet',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'Mukta',
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 0, 0, 0),
                        child: Text('SMS Preferences',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      InkWell(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.transparent,
                                  ),
                                ],
                                color: Colors.blue[400]),
                            child: Hero(
                              tag: '1',
                              child: Icon(Icons.arrow_right_alt_rounded,
                                  color: Colors.white, size: 18),
                            )),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 0, 4.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Manage if you want to receive\nupdates about promotion,features or news',
                        style: TextStyle(
                            color: Colors.grey[400],
                            fontFamily: 'Mukta',
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(4.w, 0, 4.w, 1.h),
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 1.h,horizontal: 3.w),
            decoration: BoxDecoration(
              color: Color(0xff0f2f2f2),
              borderRadius: BorderRadius.circular(5.w),
              boxShadow: [
                BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 10,
                    offset: Offset(-1, -1),
                    //color: Colors.white
                    color: Color(0xff0f2f2f2))
              ],
            ),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(
                      BorderRadius.circular(8)),
                  shape: NeumorphicShape.flat,
                  depth: 2,
                  intensity: 4,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('Other',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Mukta',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('Rate',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Mukta',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('Support',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Mukta',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('Privacy Policy',
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontFamily: 'Mukta',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500)),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                    alignment: Alignment.topLeft,
                    child: Text('Logout',
                        style: TextStyle(
                            color: Colors.red,
                            fontFamily: 'Mukta',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w500)),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
