import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'Email%20Screen.dart';
import 'package:sizer/sizer.dart';

class PancardScreen extends StatefulWidget {
  @override
  _PancardScreenPageState createState() => _PancardScreenPageState();
}



class _PancardScreenPageState extends State<PancardScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
          //colors: [Colors.green, Colors.blue]
          colors: <Color>[
            Color(0xff01142b),
            Color(0xff002860),
          ],
        )),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             SizedBox(
              height: 10.h,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin:  EdgeInsets.only(left: 7.w, ),
              child: Text(
                'Pan Card',
                style: TextStyle(
                  fontFamily: 'Mukta',
                  fontSize: 20.sp,
                  letterSpacing: .8,
                  color: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 3.h)),
            Container(
              margin:  EdgeInsets.only(left: 6.0.w,),
              child: Text(
                'additional information help us fetch\naccurate credit information',
                style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 12.sp,
                  letterSpacing: 1,
                  color: Colors.white.withOpacity(0.31),
                  fontWeight: FontWeight.w200,
                ),
              ),
              alignment: Alignment.topLeft,
            ),
             SizedBox(
              height: 4.h,
            ),
            Container(
                margin:  EdgeInsets.only(left: 6.w, right: 22.w),
                child: TextFormField(
                  cursorColor: Color(0xffffffff),
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontFamily: 'Oxygen',
                    fontSize: 20.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
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
                    contentPadding:
                        EdgeInsets.only(left: 4, bottom: 4, top: 4, right: 15),
                    hintText: "_   _   _    p   _   _   _   _   _",
                    hintStyle: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 15.sp,
                      letterSpacing: 1,
                      color: Colors.white.withOpacity(0.79),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
             SizedBox(
              height: 3.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(PageTransition(
                    type: PageTransitionType.fade,
                    child: EmailScreen(),
                    duration: Duration(milliseconds: 900),
                    reverseDuration: (Duration(milliseconds: 900))));

                /*    Navigator.push(
                    context, CupertinoPageRoute(builder: (context) => EmailScreen()));*/
              },
              child: Hero(
                tag: 'button',

                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: 7.w,
                    top: 2.h,
                    right: 55.w,

                  ),
                  height: 7.h,

                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-3.0, -3.0),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 5.0,
                      ),
                    ],
                    color: Color(0xff0129afa),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  //alignment: Alignment.center,
                  child:  Text(
                    'Proceed',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Oxygen',
                      decoration: TextDecoration.none,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w300,
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
