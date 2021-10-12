import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'PancardScreen.dart';
import 'widgets/start_button.dart';
import '../utils/fadetransition.dart';
import 'package:sizer/sizer.dart';

class DobScreen extends StatefulWidget {
  @override
  _DobScreenPageState createState() => _DobScreenPageState();
}

double topChange = 380;
double rightChange = 20;
String text = 'Agree & continue';

class _DobScreenPageState extends State<DobScreen> {
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 10.h,
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 7.0.w),
            child: Text(
              'Date of birth',
              style: TextStyle(
                fontFamily: 'Mukta',
                fontSize: 20.sp,
                letterSpacing: .5,
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 3.0.h)),
          Container(
            margin: EdgeInsets.only(
              left: 7.0.w,
            ),
            child: Text(
              'additional information help us fetch\naccurate credit reports',
              style: TextStyle(
                fontFamily: 'Oxygen',
                fontSize: 12.sp,
                letterSpacing: .8,
                color: Colors.white.withOpacity(0.31),
                fontWeight: FontWeight.w200,
              ), //textAlign: TextAlign.left,
            ),
            alignment: Alignment.topLeft,
          ),
          SizedBox(
            height: 4.h,
          ),
          Container(
            margin: EdgeInsets.only(left: 6.w, right: 25.0.w),
            child: TextFormField(
              cursorColor: Color(0xffffffff),
              keyboardType: TextInputType.number,
              style: TextStyle(
                color: Color(0xffffffff),
                fontFamily: 'Oxygen',
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
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
                    EdgeInsets.only(left: 10, bottom: 4, top: 4, right: 15),
                hintText: "m m / d d / y y y y ",
                hintStyle: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 18.sp,
                  color: Colors.white.withOpacity(0.31),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.h,
          ),
          InkWell(
            onTap: () => Navigator.push(
                context,
                PageTransition(
                    child: PancardScreen(),
                    type: PageTransitionType.fade,
                    duration: Duration(milliseconds: 700),
                    reverseDuration: (Duration(milliseconds: 700)))),
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                left: 7.w,
                top: topChange,
                right: rightChange,
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
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Oxygen',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      topChange = 380;
      rightChange = 20;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 100), () {
      setState(() {
        topChange = 2.h;
        rightChange = 55.w;
        text = 'Proceed';
      });
    });
  }
}
