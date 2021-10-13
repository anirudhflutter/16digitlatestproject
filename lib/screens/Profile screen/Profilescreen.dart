import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../PancardScreen.dart';
import '../Profile%20screen/GeneralTabscreen.dart';
import '../Profile%20screen/PersonalTabscreen.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenPageState createState() => _ProfileScreenPageState();
}

class _ProfileScreenPageState extends State<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  final pages = [
    new GeneralTabscreen(),
    new PersonalTabscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          decoration: BoxDecoration(color: Color(0xffecf0f2)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: Color(0xfff2f2f2),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(-1, -1),
                                color: Colors.grey)
                          ]),
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(60)),
                              shape: NeumorphicShape.flat,
                              depth: 2,
                              intensity: 10,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Icon(
                            Icons.arrow_back_rounded,
                          )),
                      width: 10.w,
                      height: 5.h,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Color(0xfff2f2f2),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(-1, -1),
                              color: Colors.grey)
                        ]),
                    child: Container(
                      child: Neumorphic(
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(60)),
                              shape: NeumorphicShape.flat,
                              depth: 2,
                              intensity: 10,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: Padding(
                            padding: EdgeInsets.all(1.w),
                            child: Icon(
                              Icons.more_horiz,
                              size: 25.sp,
                            ),
                          )),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text('Profile',
                    style: TextStyle(
                        color: Colors.grey[800],
                        fontFamily: 'Mukta',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 1.h),
                    height: 37.5.h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        // color: Colors.white,
                        color: Color(0xffecf0f2),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 10,
                              offset: Offset(-1, -1),
                              //color: Colors.white
                              // color: Color(0xff0f2f2f2)
                              color: Color(0xffecf0f2))
                        ]),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape:
                          NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                          shape: NeumorphicShape.concave,
                          depth: 2,
                          intensity: 10,
                          shadowLightColor: Colors.white,
                          lightSource: LightSource.topLeft,
                          color: Colors.grey),
                      child: Stack(
                        children: [
                          Container(
                            color: Colors.grey[100],
                          ),
                          Column(
                            children: [
                              Container(
                                  margin:
                                  EdgeInsets.fromLTRB(7.w, 1.h, 7.w, 2.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      color: Color(0xff002860),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(-1, -1),
                                            color: Colors.white)
                                      ]),
                                  child: Hero(
                                    tag: 'profile',
                                    child: Image.asset(
                                      'assets/images/profile.png',
                                      height: 13.h,
                                    ),
                                  )),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                child: Text('Kabir Singh',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Mukta',
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600)),
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin:
                                    EdgeInsets.fromLTRB(7.w, 0.1.h, 0, 0),
                                    child: Text('UPI ID:',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    margin:
                                    EdgeInsets.fromLTRB(0, 0.1.h, 7.w, 0),
                                    child: Text('  Kabirsingh0022@okicici.com',
                                        style: TextStyle(
                                            color: Color(0xffC2CBDB),
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                    child: Text('Mobile No:',
                                        style: TextStyle(
                                            color: Colors.blue[800],
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                    child: Text('  +91 987654321',
                                        style: TextStyle(
                                            color: Color(0xffC2CBDB),
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                ],
                              ),
                              Divider(
                                color: Colors.black,
                              ),
                              // SizedBox(
                              //   height: 1.h,
                              // ),
                              Stack(
                                children: [
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: new TabBar(
                                      controller: _controller,
                                      onTap: (index) {
                                        setState(() {});
                                      },
                                      indicatorColor: Colors.black,
                                      indicatorWeight: 1,
                                      indicatorSize: TabBarIndicatorSize.label,
                                      labelColor: Colors.blue[800],
                                      unselectedLabelColor: Colors.grey[600],
                                      tabs: [
                                        Text(
                                          "General",
                                          style: TextStyle(
                                              fontFamily: 'Mukta',
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text("Personal",
                                            style: TextStyle(
                                                fontFamily: 'Mukta',
                                                fontSize: 13.sp,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      width: 1,
                                      height: 7.5.h,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              new Container(
                //height: MediaQuery.of(context).size.height/0.9,
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    new BoxShadow(color: Colors.transparent),
                  ],
                ),
                child: AnimatedSwitcher(
                  child: pages[_controller.index],
                  duration: Duration(milliseconds: 800),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
