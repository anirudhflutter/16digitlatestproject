import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../PancardScreen.dart';
import 'package:sizer/sizer.dart';

class Selectchildscreen extends StatefulWidget {
  @override
  _SelectchildscreenState createState() => _SelectchildscreenState();
}

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

FavoriteMethod _method = FavoriteMethod.flutter;

class _SelectchildscreenState extends State<Selectchildscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 40.h,
            child: Dialog(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    //width: double.infinity,//Your desire Width
                    // height: 200,//Your desire Height
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                            child: Text(
                          'Select child',
                          style: TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              fontSize: 11.sp),
                        )),
                        InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color(0xff002860),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 15,
                                        offset: Offset(-5, -3),
                                        color: Colors.white)
                                  ]),
                              child: Padding(
                                padding: EdgeInsets.all(3.w),
                                child: Text('Add Child',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8.sp)),
                              ),
                            ),
                            onTap: () {
                              /*   Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Allsubjects()),
                                        );*/
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 1.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        child: Container(
                          height: 7.h,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Neumorphic(
                                margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 0),
                                style: NeumorphicStyle(
                                    depth: NeumorphicTheme.embossDepth(context),
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(60)),
                                    intensity: 10.0,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Color(0xff002860),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 15,
                                            offset: Offset(-5, -3),
                                            color: Colors.white)
                                      ]),
                                  width: 14.w,
                                  height: 12.h,
                                  child: Padding(
                                    padding:  EdgeInsets.all(2.w),
                                    child: Image.asset(
                                      "assets/images/selectchild.png",
                                      width: 14.w,
                                      height: 12.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.w),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Karunnya Chaudhary',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 9.sp)),
                                    Text('Pocket money',
                                        style: TextStyle(
                                            color: Colors.blue[400],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 8.sp)),
                                  ],
                                ),
                              ),
                              Radio<FavoriteMethod>(
                                value: FavoriteMethod.kotlin,
                                groupValue: _method,
                                onChanged: (value) {
                                  setState(() {
                                    _method = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 1.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        child: Container(
                          height: 7.h,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Neumorphic(
                                margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 0),
                                style: NeumorphicStyle(
                                    depth: NeumorphicTheme.embossDepth(context),
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(60)),
                                    intensity: 10.0,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Color(0xff002860),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 15,
                                            offset: Offset(-5, -3),
                                            color: Colors.white)
                                      ]),
                                  width: 14.w,
                                  height: 12.h,
                                  child: Padding(
                                    padding:  EdgeInsets.all(2.w),
                                    child: Image.asset(
                                      "assets/images/selectchild.png",
                                      width: 14.w,
                                      height: 12.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.w),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Karunnya Chaudhary',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 9.sp)),
                                    Text('Pocket money',
                                        style: TextStyle(
                                            color: Colors.blue[400],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 8.sp)),
                                  ],
                                ),
                              ),
                              Radio<FavoriteMethod>(
                                value: FavoriteMethod.kotlin,
                                groupValue: _method,
                                onChanged: (value) {
                                  setState(() {
                                    _method = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 1.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Card(
                        child: Container(
                          height: 7.h,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              Neumorphic(
                                margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 0),
                                style: NeumorphicStyle(
                                    depth: NeumorphicTheme.embossDepth(context),
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(60)),
                                    intensity: 10.0,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white),
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      // color: Color(0xff002860),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 15,
                                            offset: Offset(-5, -3),
                                            color: Colors.white)
                                      ]),
                                  width: 14.w,
                                  height: 12.h,
                                  child: Padding(
                                    padding:  EdgeInsets.all(2.w),
                                    child: Image.asset(
                                      "assets/images/selectchild.png",
                                      width: 14.w,
                                      height: 12.h,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 1.w),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('Karunnya Chaudhary',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 9.sp)),
                                    Text('Pocket money',
                                        style: TextStyle(
                                            color: Colors.blue[400],
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 8.sp)),
                                  ],
                                ),
                              ),
                              Radio<FavoriteMethod>(
                                value: FavoriteMethod.kotlin,
                                groupValue: _method,
                                onChanged: (value) {
                                  setState(() {
                                    _method = value!;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
