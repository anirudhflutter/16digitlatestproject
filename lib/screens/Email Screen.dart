import 'dart:async';
import 'dart:ui';

//import 'package:fdottedline/fdottedline.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sixteen_digit_project/screens/PermissionScreen.dart';
import 'package:sixteen_digit_project/screens/widgets/start_button.dart';
import 'package:sixteen_digit_project/utils/fadetransition.dart';
import 'package:sizer/sizer.dart';

class EmailScreen extends StatefulWidget {
  @override
  _EmailScreenPageState createState() => _EmailScreenPageState();
}

class _EmailScreenPageState extends State<EmailScreen> {
  bool _checkbox = false;

  //bool _checkboxListTile = false;

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
            child: Column(children: <Widget>[
               SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin:  EdgeInsets.only(left: 7.w,),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 22.sp,
                    letterSpacing: .8,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 3.0.h)),
              Container(
                margin:  EdgeInsets.only(left: 7.w,),
                child: Text(
                  'your credit report will be sent to\nthis email ID',
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 12.sp,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.31),
                    fontWeight: FontWeight.w200,
                  ), //textAlign: TextAlign.left,
                ),
                alignment: Alignment.topLeft,
              ),
              /*const SizedBox(
              height: 20,
            ),*/
              Container(
                  margin:
                       EdgeInsets.only(left: 6.w, right: 20.0.w, top: 3.h),
                  child: TextFormField(
                    cursorColor: Color(0xffffffff),
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Color(0xffffffff),
                      fontFamily: 'Oxygen',
                      fontSize: 15.sp,
                      letterSpacing: 1,
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
                      contentPadding: EdgeInsets.only(
                          left: 2.w, bottom: 1.h, top: 1.h, right: 1.w),
                      hintText: "e m a i l",
                      hintStyle: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 18.sp,
                        letterSpacing: 1,
                        color: Colors.white.withOpacity(0.31),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin:  EdgeInsets.only(left: 1.0.w, ),
                        child: DottedLine(
                          direction: Axis.horizontal,
                          lineLength: double.infinity,
                          lineThickness: 1.0,
                          dashLength: 4.0,
                          dashColor: Colors.white.withOpacity(.11),
                          dashRadius: 0.0,
                          dashGapLength: 4.0,
                          dashGapColor: Colors.transparent,
                          dashGapRadius: 0.0,
                        )),
                     SizedBox(
                      height: 2.h,
                    ),
                    Stack(
                      children: [
                        Align(
                            alignment: Alignment.topRight,
                            child: ClipRRect(
                              child: ImageFiltered(
                                  imageFilter: ImageFilter.blur(
                                      sigmaX: 0.4, sigmaY: 0.10),
                                  child: Container(
                                      child: Opacity(
                                          opacity: 1.0,
                                          child: Image.asset(
                                            "assets/images/whatappemail.png",
                                            width: 30.w,
                                            height: 13.h,
                                          )))),
                            )),
                        Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin:  EdgeInsets.only(
                                  left: 5.w,),
                              child: AnimatedOpacity(
                                opacity: _checkbox ? 1.0 : 0.7,
                                duration: Duration(milliseconds: 500),
                                child: Transform.scale(
                                  scale: 1.8,
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
                                        color:
                                            Color(0xffffffff).withOpacity(.31)),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin:  EdgeInsets.only(
                                  left: 7.w, right: 30.0),
                              child: Text(
                                'I agree to enable\nwhatsapp alert',
                                style: TextStyle(
                                  fontFamily: 'Oxygen',
                                  fontSize: 10.sp,
                                  letterSpacing: .5,
                                  color: Colors.white.withOpacity(.74),
                                  fontWeight: FontWeight.w400,
                                  // fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                             SizedBox(
                              height: 3.h,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin:  EdgeInsets.only(
                                  left: 7.0.w),
                              child: Text(
                                'receive reminders updates on\nbank charges and rewards.',
                                style: TextStyle(
                                  fontFamily: 'Oxygen',
                                  fontSize: 11.sp,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  // fontWeight: FontWeight.normal,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                     SizedBox(
                      height: 5.h,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(PageTransition(
                      child: PermissionScreen(),
                      type: PageTransitionType.fade,
                      duration: Duration(seconds: 1),reverseDuration: Duration(seconds: 1)));
                },
                child: Hero(
                  tag: 'button',
                  child: StartButton(),
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
            ])));
  }
}
