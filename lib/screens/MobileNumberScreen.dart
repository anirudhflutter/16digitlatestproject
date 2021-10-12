import 'dart:async';
import 'package:flutter/material.dart';

//import 'package:flutter/material.dart' hide Router;
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

//import 'package:flutter_neumorphic/flutter_neumorphic.dart';
//import 'package:flutter_neumorphic/flutter_neumorphic.dart' as flutter_neumorphic ;
import 'package:sixteen_digit_project/screens/DOBScreen.dart';
import 'package:sixteen_digit_project/utils/fadetransition.dart';
import 'package:sizer/sizer.dart';

class MobileNumberScreen extends StatefulWidget {
  @override
  _MobileNumberScreenPageState createState() => _MobileNumberScreenPageState();
}

class _MobileNumberScreenPageState extends State<MobileNumberScreen> {
  final String font = "Oxygen";
  bool _checkbox = false;

  //bool _checkboxListTile = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //colors: [Colors.green, Colors.blue]
          colors: <Color>[
            Color(0xff01142b),
            Color(0xff00265d),
          ],
        )),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 11.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 7.w),
              child: Text(
                'Enter mobile',
                style: TextStyle(
                  fontFamily: 'Mukta',
                  fontSize: 19.sp,
                  letterSpacing: .5,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 7.w, top: 1.h),
              child: Text(
                'number',
                style: TextStyle(
                  fontFamily: 'Mukta',
                  fontSize: 19.sp,
                  letterSpacing: .5,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 5.h)),
            Container(
                margin: EdgeInsets.only(left: 7.w, right: 30.w),
                child: TextFormField(
                  cursorColor: Colors.blue,
                  cursorHeight: 22,
                  autofocus: false,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Mukta',
                    fontSize: 18.sp,
                    letterSpacing: 1,
                  ),
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff97A7C3)),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffffffff)),
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xffffffff)),
                    ),
                    contentPadding: EdgeInsets.only(left: 3.w),
                    hintText: "* * * * * * * * * *",
                    hintStyle: TextStyle(
                      height: 2,
                      fontFamily: 'Mukta',
                      fontSize: 18.sp,
                      letterSpacing: 1,
                      color: Colors.grey.withOpacity(.31),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 7.w),
                    child: Transform.scale(
                      scale: 2,
                      child: AnimatedOpacity(
                        opacity: _checkbox ? 1.0 : 0.7,
                        duration: Duration(milliseconds: 1000),
                        child: Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          value: _checkbox,
                          onChanged: (value) {
                            setState(() {
                              _checkbox = !_checkbox;
                            });
                          },
                          side: BorderSide(
                              color: Color(0xffffffff).withOpacity(.31)),
                          /* activeColor: Colors.transparent,
                          checkColor: Colors.white,
                          tristate: false,*/
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 8.w, right: 2.w),
              child: Text.rich(
                TextSpan(
                  text:
                      'I agree to the terms of use and hereby appoint 16 digit to receive my credit information from ',
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    letterSpacing: .5,
                    fontSize: 10.sp,
                    color: Colors.white.withOpacity(.74),
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'RBI approved\ncredit bureaus.',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontFamily: 'Oxygen',
                          fontSize: 11.sp,
                          color: Colors.white.withOpacity(.74),
                          letterSpacing: .5,
                          fontWeight: FontWeight.w600,
                        )),
                    // can add more TextSpans here...
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 8.w, top: 1.h),
              child: Text(
                'This will not affect your score',
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 10.sp,
                  color: Colors.white.withOpacity(.74),
                  letterSpacing: .5,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    child: DobScreen(),
                    duration: Duration(milliseconds: 600),
                    reverseDuration: (Duration(milliseconds: 600))));
              },
              child: Hero(
                tag: 'button',
                child: Container(
                  margin: EdgeInsets.only(
                    left: 7.w,
                    top: 6.h,
                    right: 8.w,
                    bottom: 3.h,
                  ),
                  height: 5.5.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-6.0, -5.0),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 8.0,
                      ),
                    ],
                    color: Color(0xff0129afa),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Agree & continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
