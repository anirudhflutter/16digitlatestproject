import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';


class PreApprovedTabscreen extends StatefulWidget {

  @override
  _PreApprovedTabscreenState createState() => _PreApprovedTabscreenState();
}

class _PreApprovedTabscreenState extends State<PreApprovedTabscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0ecf0f2),
      body:  ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: List.generate(choices.length, (index) {
          return Center(
            child: SelectCard(choice: choices[index]),
          );
        }
        ),
      ),
    );
  }
}


class Choice {
  const Choice({required this.bankimage,required this.bankname,required this.bankbelowimage,required this.tc,
    required this.startColor,required this.endColor,
  });
  final String bankimage;
  final String bankname;
  final String bankbelowimage;
  final String tc;
  final Color startColor;
  final Color endColor;
}

const List<Choice> choices = const <Choice>[

  const Choice(bankimage:('assets/images/rbl.png'), bankname:("HDFC Bank CREDIT CARD"),
      bankbelowimage: ('assets/images/Group.png'),tc: ('T&C Apply*'),
      startColor:Color(0xffffbdbe),endColor: Color(0xfffbe7e7)),
  const Choice(bankimage:('assets/images/Logo SVG.png'), bankname:("HDFC Bank CREDIT CARD"),
      bankbelowimage: ('assets/images/Group.png'),tc: ('T&C Apply*'),
      startColor:Color(0xff838e74),endColor: Color(0xffe0f4c7)
  ),
  const Choice(bankimage:('assets/images/idfc.png'), bankname:("HDFC Bank CREDIT CARD"),
      bankbelowimage: ('assets/images/Group.png'),tc: ('T&C Apply*'),
      startColor:Color(0xff565b7a),endColor: Color(0xffc3cbf2)),
  const Choice(bankimage:('assets/images/LOGO.png'), bankname:("HDFC Bank CREDIT CARD"),
      bankbelowimage: ('assets/images/Group.png'),tc: ('T&C Apply*'),
      startColor:Color(0xff799390),endColor: Color(0xffd0f9f3)),
  const Choice(bankimage:('assets/images/LOGO.png'), bankname:("HDFC Bank CREDIT CARD"),
      bankbelowimage: ('assets/images/Group.png'),tc: ('T&C Apply*'),
      startColor:Color(0xffffbdbe),endColor: Color(0xfffbe7e7)),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;



  @override
  Widget build(BuildContext context) {
    return  Column(
        children: [
          Container(
           margin:EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  shape: NeumorphicShape.flat,
                  depth: 2,
                  intensity: 4,
                  shadowLightColor: Colors.white,
                  lightSource: LightSource.topLeft,
                  color: Colors.white
              ),
              child: Container(
               // width: double.infinity,
                height: 35.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: LinearGradient(colors: [
                    choice.startColor,
                    choice.endColor,
                  ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight),
              /*boxShadow: [
                    BoxShadow(
                      color: choice.endColor,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],*/
    ),
                child: Column(
                  children: [
                    Expanded(
                      child: Stack(
                        children: [
                          Container(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding:  EdgeInsets.fromLTRB(1.w, 0, 5.w, 0),
                                child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Image.asset(choice.bankimage,width: 30.w,height: 14.h,)),
                              )
                          ),Container(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:MainAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topCenter,
                                    margin:EdgeInsets.fromLTRB(35.w, 3.h, 5.w, 0),
                                    child: Text(choice.bankname,
                                        style: TextStyle(color: Colors.white, fontFamily: 'Mukta',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w700,)),),
                                  Container(
                                    margin:EdgeInsets.fromLTRB(0, 0, 1.w, 0),
                                    alignment: Alignment.topCenter,
                                    child: Image.asset(choice.bankbelowimage,width: 10.w,height: 5.h,),
                                  ),
                                ]
                            ),
                          ),Container(
                            alignment: Alignment.bottomRight,
                            margin:EdgeInsets.fromLTRB(7.w, 0, 1.w, 7.w),
                            child: Text(choice.tc,
                                style: TextStyle(color: Colors.white,
                                  fontFamily: 'Mukta',
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),]
    );
  }
}

class RandomColorModel {
  Random random = Random();
  Color getColor() {
   return Color.fromARGB(random.nextInt(256), random.nextInt(256),
      random.nextInt(400), random.nextInt(200),);

  }
}


