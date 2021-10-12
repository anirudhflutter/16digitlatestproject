import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class PersonalTabscreen extends StatefulWidget {
  @override
  _PersonalTabscreenState createState() => _PersonalTabscreenState();
}

class _PersonalTabscreenState extends State<PersonalTabscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(children: [
            Neumorphic(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
              // margin:EdgeInsets.fromLTRB(0, 20, 0, 0),
              style: NeumorphicStyle(
                  boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  shape: NeumorphicShape.concave,
                  depth: 2,
                  intensity: 10,
                  shadowLightColor: Colors.white,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                        alignment: Alignment.topLeft,
                        child: Text('Mobile',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1.h, 6.w, 0),
                        alignment: Alignment.center,
                        child: Text('+91 999999999',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.w, top: 1.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 17.sp,
                            ),
                            Text('verified',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Mukta',
                                    fontSize: 7.sp,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ]),
                Divider(
                  color: Colors.black,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                        alignment: Alignment.topLeft,
                        child: Text('Email',
                            style: TextStyle(
                                color: Colors.grey[800],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                        alignment: Alignment.topLeft,
                        child: Text('info@urbanhat.in',
                            style: TextStyle(
                                color: Colors.grey[400],
                                fontFamily: 'Mukta',
                                fontSize: 11.sp,
                                fontWeight: FontWeight.w500)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 4.w, top: 1.h),
                        child: Column(
                          children: [
                            Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 17.sp,
                            ),
                            Text('verified',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontFamily: 'Mukta',
                                    fontSize: 7.sp,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ]),
                Divider(
                  color: Colors.black,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                      alignment: Alignment.center,
                      child: Text('KYC',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                      alignment: Alignment.centerLeft,
                      child: Text('update KYC',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(8.w, 1.h, 5.w, 0),
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
                              color: Colors.white, size: 15.sp),
                        )),
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
                      margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                      alignment: Alignment.center,
                      child: Text('Address',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                      alignment: Alignment.center,
                      child: Text('update address',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(8.w, 1.h, 5.w, 0),
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
                              color: Colors.white, size: 15.sp),
                        )),
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
                      margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                      alignment: Alignment.center,
                      child: Text('CIBIL',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                      alignment: Alignment.center,
                      child: Text('update CIBIL',
                          style: TextStyle(
                              color: Colors.grey[400],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(8.w, 1.h, 5.w, 0),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                      alignment: Alignment.center,
                      child: Text('About us',
                          style: TextStyle(
                              color: Colors.grey[800],
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500)),
                    ),

                    Container(
                        margin: EdgeInsets.fromLTRB(0.w, 1.h, 5.w, 0),
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

                SizedBox(height: 2.h,)
              ]),
            )
          ]),
        ));
  }
}
