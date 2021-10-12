import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import '../Famcard%20screen/PaymentMethodscreen.dart';
import 'package:sizer/sizer.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class Addmoneyscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddmoneyscreenState();
  }
}

class AddmoneyscreenState extends State<Addmoneyscreen> {
  @override
  final TextEditingController _controller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            // The containers in the background
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topCenter,
                  height: 55.h,
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
                        ]),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(7.w, 5.h, 0, 0),
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
                              width: 11.w,
                              height: 5.5.h,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.all(1.w),
                        child: Container(
                          child: Hero(
                            tag: "Add Money",
                            child: Text('Add Money',
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.none,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 6.h, bottom: 1.h),
                        child: Text('Card Balance',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.normal,
                                fontSize: 10.sp)),
                      ),
                      Container(
                        child: Text('₹ 1,000',
                            style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 21.sp)),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
                          child: Text("Add Money to Karunnya's card",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.sp))),
                    ],
                  ),
                ),
                new Container(
                  height: 45.h,
                  color: Colors.white,
                )
              ],
            ),
            new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(
                top: 40.h,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.w),
                    topRight: Radius.circular(7.w),
                  ),
                  //color: Colors.white,
                  color: Color(0xffecf0f2),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 5.h),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.8),
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 8,
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          offset: Offset(6.0, 6.0),
                          blurRadius: 8.0,
                        ),
                      ],
                      //color: Colors.white,
                      color: Color(0xffecf0f2),

                      borderRadius: BorderRadius.circular(7.w),
                    ),
                    child: Neumorphic(
                      style: NeumorphicStyle(
                        depth: NeumorphicTheme.embossDepth(context),
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(7.w)),
                        intensity: 10.0,
                        lightSource: LightSource.topLeft,
                        shadowDarkColor: Color(0xffecf0f2),
                        // color: Colors.white
                      ),
                      child: Container(
                        //height: 440,
                        // height: MediaQuery.of(context).size.height * 0.62,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //color: Colors.white,
                          color: Color(0xffecf0f2),
                        ),
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 7.w, vertical: 5.h),
                              //width: 250,
                              width: double.infinity,
                              height: 9.h,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.w),
                                //color:Colors.white
                                color: Color(0xffecf0f2),
                              ),

                              child: Neumorphic(
                                //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                style: NeumorphicStyle(
                                  depth: NeumorphicTheme.embossDepth(context),
                                  boxShape: NeumorphicBoxShape.stadium(),
                                  intensity: 2.0,
                                  shadowDarkColor: Color(0xffecf0f2),
                                  //color: Colors.white,
                                  color: Color(0xffecf0f2),
                                ),

                                child: Container(
                                  margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                  color: Colors.transparent,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 0.0, right: 2.w),
                                        child: Text('₹',
                                            style: TextStyle(
                                              color: Colors.blueGrey,
                                              letterSpacing: 1,
                                              fontFamily: 'Mukta',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
                                      /*Text('Enter Amount',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,fontSize: 14)),*/
                                      Container(
                                        color: Colors.transparent,
                                        width: 50.w,
                                        child: TextFormField(
                                          cursorColor: Colors.blueGrey,
                                          inputFormatters: [    ThousandsFormatter(allowFraction: true)
                                          ],

                                          controller: _controller,
                                          keyboardType: TextInputType.number,
                                          style:
                                              TextStyle(color: Colors.blueGrey),
                                          decoration: InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                            border: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Colors.transparent),
                                            ),
                                            contentPadding: EdgeInsets.only(
                                              left: 2.w,
                                            ),
                                            hintText: "Enter Amount",
                                            hintStyle: TextStyle(
                                              fontFamily: 'Mukta',
                                              fontSize: 14.sp,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                key: ValueKey(Addmoneyscreen),
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 7.w, vertical: 3.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Image.asset(
                                          "assets/images/northon1.png",
                                          width: 12.w,
                                        ),
                                        Image.asset(
                                          "assets/images/pcj.png",
                                          width: 12.w,
                                        ),
                                        Hero(
                                          tag: "assets/images/LOGO.png",
                                          child: Image.asset(
                                            "assets/images/LOGO.png",
                                            width: 25.w,
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/master.png",
                                          width: 12.w,
                                        ),
                                        Image.asset(
                                          "assets/images/visa.png",
                                          width: 12.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          left: 5.w,
                                          top: 0,
                                          right: 5.w,
                                          bottom: 3.h,
                                        ),
                                        height: 6.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.blue[800],
                                          // color: const Color.fromARGB(255, 253, 188, 51),
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          'PROCEED',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Mukta',
                                              fontSize: 15.sp,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              child: Paymentmethodsscreen(),
                                              duration:
                                                  Duration(milliseconds: 800),
                                              reverseDuration:
                                                  Duration(milliseconds: 800)),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
