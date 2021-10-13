import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Apply%20screen/ApplyTabscreen.dart';
import '../Apply%20screen/PreApprovedTabscreen.dart';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import '../Profile%20screen/Profilescreen.dart';
import 'package:sizer/sizer.dart';

class ApplyScreen extends StatefulWidget {
  @override
  _ApplyScreenPageState createState() => _ApplyScreenPageState();
}

class _ApplyScreenPageState extends State<ApplyScreen> {
  bool valuefirst = false;
  bool valuesecond = false;
  bool valuethird = false;
  int currentIndex = 0;

  void updateTabSelection(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final page = [
    PreApprovedTabscreen(),
    ApplyTabscreen(),
  ];

  showCallDialog(context){
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),  bottomRight: Radius.circular(20.0)
          ),
        ),
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                new BoxShadow(color: Color(0xffe8f9ff)),
              ],
            ),
            //alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(0, 20, 0, 40),
            height: 400,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[

                Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: Text('16 DIGIT will never call you',
                      style: TextStyle(color: Colors.blue,
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,)),
                ),

                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text('Without your consent or permission',
                      style: TextStyle(color: Colors.black,fontFamily: 'Mukta',
                        fontSize: 20,
                        fontWeight: FontWeight.w700,)),
                ), Container(
                    height: 140,
                    width: 150,
                    child: Image.asset('assets/images/call-cut.png',
                      fit: BoxFit.fill,)

                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Text('Please help us manage, your prefences',
                      style: TextStyle(color: Colors.black,
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,)),
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(60, 20, 0, 10),
                        alignment: Alignment.center,
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue, width: 0),
                          borderRadius: BorderRadius.circular(8),

                        ),


                        child: Text('Dismiss',style: TextStyle(color: Colors.blue[800],
                          fontFamily: 'Mukta',
                          fontSize: 16,
                          fontWeight: FontWeight.w700,)),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 20, 60, 10),
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          new BoxShadow(color: Colors.blue),
                        ],

                      ),


                      child: Text('Manage',style: TextStyle(color: Colors.white,
                        fontFamily: 'Mukta',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,)),
                    ),

                  ],
                ),


              ],
            ),
          );
        });
  }

  @override
  void initState() {
    print("anirudh");
    super.initState();
    Timer(
        Duration(seconds: 3), () {
      showCallDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Color(0xff0ecf0f2),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                              child: Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 5.h, 3.w, 0),
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
                                      height: 5.h,
                                    ),
                                  )),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                      type: PageTransitionType.fade,
                                      child: ProfileScreen(),
                                      duration: Duration(milliseconds: 800),
                                      reverseDuration:
                                          Duration(milliseconds: 800)),
                                );
                              }),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5.h, 3.w, 0),
                            alignment: Alignment.centerLeft,
                            child: Text('Hi Kabir',
                                style: TextStyle(
                                  color: Colors.blue[800],
                                  fontFamily: 'Mukta',
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w500,
                                )),
                          ),
                        ],
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.fromLTRB(0, 5.h, 3.w, 0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.8),
                              offset: Offset(-6.0, -6.0),
                              blurRadius: 8,
                            ),
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(6.0, 6.0),
                              blurRadius: 8.0,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(60)),
                              shape: NeumorphicShape.flat,
                              depth: 2,
                              intensity: 10,
                              shadowLightColor: Colors.white,
                              lightSource: LightSource.topLeft,
                              color: Colors.white),
                          child: InkWell(
                            child: Container(
                              child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/call-cut.png',
                                    height: 5.h,
                                  )),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.w),
                                  ),
                                  context: context,
                                  builder: (context) {
                                    return StatefulBuilder(// this is new
                                        builder: (BuildContext context,
                                            StateSetter setState) {
                                      return Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 0, 0, 15.h),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            boxShadow: [
                                              new BoxShadow(
                                                  color: Color(0xffecf0f2)),
                                            ],
                                          ),
                                          alignment: Alignment.center,
                                          //margin: EdgeInsets.fromLTRB(30, 10, 30, 20),
                                          height: 60.h,
                                          child: Column(
                                            children: <Widget>[
                                              CheckboxListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  "Don't  call me ever",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'Mukta',
                                                    fontSize: 12.sp,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                value: this.valuefirst,
                                                onChanged: (bool? value)
                                                    //onChanged: valuefirst ? null : (bool? value)
                                                    {
                                                  setState(() {
                                                    this.valuefirst = value!;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                    'Call me whenever you want',
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Mukta',
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    )),
                                                value: this.valuesecond,
                                                onChanged: (bool? value3) {
                                                  setState(() {
                                                    this.valuesecond = value3!;
                                                  });
                                                },
                                              ),
                                              CheckboxListTile(
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                title: Text(
                                                  'Call me only',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontFamily: 'Mukta',
                                                      fontSize: 12.sp,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                value: this.valuethird,
                                                onChanged: (bool? value3) {
                                                  setState(() {
                                                    this.valuethird = value3!;
                                                  });
                                                },
                                              ),

                                              // input chip widget.
                                              Container(
                                                child: Column(
                                                  children: <Widget>[
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  top: 2.h,
                                                                  left: 5.w,
                                                                  right: 5.w),
                                                          child:
                                                              _titleContainer(
                                                                  "Day"),
                                                        ),
                                                        Column(
                                                          children: [
                                                            Container(
                                                              width: 80.w,
                                                              child: Wrap(
                                                                spacing: 10.0,
                                                                runSpacing:
                                                                    10.0,
                                                                children: <
                                                                    Widget>[
                                                                  filterChipWidget(
                                                                    chipName:
                                                                        'MON',
                                                                  ),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'TUE'),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'WED'),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'THUR'),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'FRI'),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'SAT'),
                                                                  filterChipWidget(
                                                                      chipName:
                                                                          'SUN'),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      top: 2.h,
                                                                      left: 5.w,
                                                                      right:
                                                                          5.w),
                                                              child:
                                                                  _titleContainer(
                                                                      'Time'),
                                                            ),
                                                          ),
                                                          Container(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            width: 80.w,
                                                            child: Column(
                                                              children: [
                                                                Container(
                                                                  child: Wrap(
                                                                    spacing:
                                                                        10.0,
                                                                    runSpacing:
                                                                        10.0,
                                                                    children: <
                                                                        Widget>[
                                                                      filterChipWidget(
                                                                        chipName:
                                                                            '10AM-12PM',
                                                                      ),
                                                                      filterChipWidget(
                                                                          chipName:
                                                                              '12PM-2PM'),
                                                                      filterChipWidget(
                                                                          chipName:
                                                                              '12PM-2PM'),
                                                                      filterChipWidget(
                                                                          chipName:
                                                                              '12PM-2PM'),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ]),
                                                  ],
                                                ),
                                              ),

                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                    alignment: Alignment.center,
                                                    margin: EdgeInsets.fromLTRB(
                                                        7.w, 1.h, 0, 0),
                                                    width: 30.w,
                                                    height: 5.h,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors.black,
                                                          width: 0),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                      boxShadow: [
                                                        new BoxShadow(
                                                            color:
                                                                Colors.white),
                                                      ],
                                                    ),
                                                    child: Text('Dismiss',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontFamily: 'Mukta',
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 1.h, 7.w, 0),
                                                    alignment: Alignment.center,
                                                    width: 30.w,
                                                    height: 5.h,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: Colors
                                                              .blue.shade800,
                                                          width: 0),
                                                      boxShadow: [
                                                        new BoxShadow(
                                                            color: Colors
                                                                .blue.shade800),
                                                      ],
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8),
                                                    ),
                                                    child: Text('Save',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontFamily: 'Mukta',
                                                            fontSize: 13.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700)),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ));
                                    });
                                  });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(5.w, 2.h, 0, 0),
                    alignment: Alignment.topLeft,
                    child: Text('Apply for Loan',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Oxygen',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                  ),

                  // Tabbar for spend and Save
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topCenter,
                        width: double.infinity,
                        height: 100.h,
                        decoration: BoxDecoration(
                            //  border: Border.all(color: Colors.black, width: 0),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.transparent,
                              ),
                            ],
                            color: Colors.transparent),
                        child: DefaultTabController(
                          length: 2,
                          //length: _myTabs.length,
                          initialIndex: 1,
                          child: Scaffold(
                            appBar: AppBar(
                              titleSpacing: 0,
                              automaticallyImplyLeading: false,
                              // Don't show the leading button
                              elevation: 0,
                              backgroundColor: Color(0xff0ecf0f2),

                              bottom: PreferredSize(
                                preferredSize: Size.fromHeight(-2.h),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: TabBar(
                                        onTap: (index){
                                          updateTabSelection(index);
                                        },
                                        indicatorColor: Colors.blue[800],
                                        indicatorWeight: 2,
                                        indicatorSize:
                                            TabBarIndicatorSize.label,
                                        labelColor: Colors.blue[800],
                                        unselectedLabelColor: Colors.black,
                                        tabs: [
                                          Text(
                                            "Pre-Approved",
                                            style: TextStyle(
                                                fontFamily: 'Oxygen',
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text("Apply",
                                              style: TextStyle(
                                                fontFamily: 'Oxygen',
                                                fontSize: 11.sp,
                                                fontWeight: FontWeight.w700,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            body: AnimatedSwitcher(
                             duration: Duration(seconds: 1),
                              reverseDuration: Duration(seconds: 1),
                              child: page[currentIndex],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  Widget _titleContainer(String myTitle) {
    return Text(
      myTitle,
      style: TextStyle(
          color: Colors.black, fontSize: 11.sp, fontWeight: FontWeight.normal),
    );
  }
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    /*  style: TextStyle(
                                                        color: Colors.black,
                                                      fontFamily: 'Mukta',
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.w700,),*/
    return FilterChip(
        label: Text(
          widget.chipName,
          style: TextStyle(
              fontFamily: 'Mukta',
              fontSize: 9.sp,
              fontWeight: FontWeight.w600,
              color: _isSelected ? Colors.white : Colors.blue[800]),
        ),
        labelStyle: TextStyle(
            color: Color(0xff6200ee),
            fontSize: 12.sp,
            fontWeight: FontWeight.bold),
        selected: _isSelected,
        /*   shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),*/
        shape: StadiumBorder(side: BorderSide(color: Colors.blue, width: 1)),
        backgroundColor: Color(0xffffffff),
        onSelected: (isSelected) {
          setState(() {
            _isSelected = isSelected;
          });
        },
        showCheckmark: false,
        selectedColor: Colors.blue[800]);
  }
}
