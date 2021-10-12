import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Wallet%20screen/PersonalLoanDetailscreen.dart';
import 'package:sizer/sizer.dart';

class PersonalLoanscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PersonalLoanscreenState();
  }
}

class PersonalLoanscreenState extends State<PersonalLoanscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    height: 35.h,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      colors: <Color>[
                        Color(0xff0159de),
                        Color(0xff004cbc),
                        Color(0xff023b92),
                        Color(0xff002d70),
                      ],
                    )),
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                margin: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                                //color: Colors.red,
                                // width: 100,
                                //height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Color(0xfff2f2f2),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          color: Colors.white)
                                    ]),
                                child: Icon(
                                  Icons.arrow_back_rounded,
                                ),
                                width: 10.w,
                                height: 5.h,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                              child: Text('Personal Loan',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.sp)),
                            ),
                          ],
                        ),
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
              new Container(
                  alignment: Alignment.topCenter,
                  padding:
                      new EdgeInsets.only(top: 20.h, right: 0.0, left: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(children: [
                      Padding(
                        padding: EdgeInsets.all(5.w),
                        child: Container(
                          //height: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              //color: Color(0xfff2f2f2),
                              color: Colors.white),

                          child: Neumorphic(
                            style: NeumorphicStyle(
                                depth: NeumorphicTheme.embossDepth(context),
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(20)),
                                intensity: 10.0,
                                lightSource: LightSource.topLeft,
                                color: Colors.white),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                                  //width: 270,
                                  width: double.infinity,
                                  height: 6.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      // color: Color(0xff0f2f2f2),
                                      color: Colors.white),

                                  child: Neumorphic(
                                    //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                    style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.stadium(),
                                      intensity: 1.0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      margin:
                                          EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                      child: Text('Loan amount eg. ₹10,000',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 12.sp)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                  //width: 270,
                                  width: double.infinity,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      // color: Color(0xff0f2f2f2),
                                      color: Colors.white),

                                  child: Neumorphic(
                                    //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                    style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.stadium(),
                                      intensity: 1.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                          EdgeInsets.fromLTRB(7.w, 0.h, 7.w, 0),
                                          child: Text('Employment Type',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11.sp)),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            margin: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                            child: Icon(Icons.arrow_drop_down,
                                                color: Colors.grey[400]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                  //width: 270,
                                  width: double.infinity,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      // color: Color(0xff0f2f2f2),
                                      color: Colors.white),

                                  child: Neumorphic(
                                    //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                    style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.stadium(),
                                      intensity: 1.0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                      child: Text('Net Monthly Income',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 11.sp)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                  //width: 270,
                                  width: double.infinity,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      // color: Color(0xff0f2f2f2),
                                      color: Colors.white),

                                  child: Neumorphic(
                                    //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                    style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.stadium(),
                                      intensity: 1.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                          EdgeInsets.fromLTRB(7.w,0, 7.w, 0),
                                          child: Text('Salary Received In',
                                              style: TextStyle(
                                                  color: Colors.blueGrey,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 11.sp)),
                                        ),
                                        Expanded(
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            margin:EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                            child: Icon(Icons.arrow_drop_down,
                                                color: Colors.grey[400]),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 3.h),
                                  //width: 270,
                                  width: double.infinity,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      // color: Color(0xff0f2f2f2),
                                      color: Colors.white),

                                  child: Neumorphic(
                                    //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                    style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.stadium(),
                                      intensity: 1.0,
                                    ),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                      child: Text('Residing City eg. Delhi',
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 11.sp)),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 3.h),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(color: Colors.white)
                                      ]),
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(8)),
                                        shape: NeumorphicShape.flat,
                                        depth: 4,
                                        lightSource: LightSource.bottom,
                                        color: Colors.white),
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                      //height: 55,
                                      child: Column(
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                alignment:
                                                    Alignment.centerLeft,
                                                margin: EdgeInsets.fromLTRB(2.w, 3.h, 0, 0),
                                                child: Icon(
                                                    Icons
                                                        .check_circle_outline_outlined,
                                                    color: Colors.blue[400]),
                                              ),
                                              Column(
                                                children: [
                                                  Container(
                                                    width: 60.w,
                                                    alignment:
                                                        Alignment.centerRight,
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 3.h, 0, 0),
                                                    child: Text(
                                                        'I hereby appoint 16 digit as my authorized representative to\nreceive my credit information from CIBIL',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blue[400],
                                                            fontStyle: FontStyle
                                                                .normal,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 8.sp),maxLines: 2,),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Container(
                                            alignment: Alignment.centerRight,
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 2.w, 2.h),
                                            child: Text('MORE+',
                                                style: TextStyle(
                                                    color: Colors.blue[400],
                                                    fontStyle: FontStyle.normal,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 8.sp)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(vertical: 1.h,horizontal: 7.w),
                                      height: 45,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        // color: const Color.fromARGB(255, 253, 188, 51),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 0,
                                              top: 0,
                                              right: 5.w,
                                              bottom: 0,
                                            ),
                                            child: Text(
                                              'PROCEED',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.sp),
                                            ),
                                          ),
                                          Icon(
                                            Icons.forward,
                                            color: Colors.white,
                                            size: 15.sp,
                                          )
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            child: PersonalLoanDetailscreen(),
                                            type: PageTransitionType.fade,
                                            curve: Curves.slowMiddle,
                                            duration: Duration(milliseconds: 900),
                                            reverseDuration:
                                            Duration(milliseconds: 900)),
                                      );
                                    }),
                                /*Expanded(
                                    child: Column(
                                      //crossAxisAlignment: CrossAxisAlignment.end,
                                      // mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget> [
                                        Container(
                                          height: 45,
                                          alignment: Alignment.center,
                                          child: InkWell(
                                            child: Row(

                                              children: [
                                                Container(
                                                  //alignment: Alignment.bottomCenter,
                                                  margin:const EdgeInsets.only( left: 20, top: 0, right: 20,
                                                    bottom: 20,),
                                                  height: 40,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    // color: const Color.fromARGB(255, 253, 188, 51),
                                                    borderRadius: BorderRadius.circular(10),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child:Text(
                                                    'PROCEED',
                                                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                                                  ),
                                                ),Icon(Icons.forward,color: Colors.white,),
                                              ],
                                            ),*/ /*onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => Paymentmethodsscreen()),
                                            );
                                          }*/ /*
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),*/
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
