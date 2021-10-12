import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import '../Famcard%20screen/AddMoneyscreen.dart';
import '../Famcard%20screen/Change%20pin%20screen.dart';
import '../Famcard%20screen/FamilycardDetailsScreen.dart';
import '../Famcard%20screen/OrderCardscreen.dart';
import '../Home%20screen/HomeBottomappbar.dart';
import '../Home%20screen/HomeScreen.dart';
import 'package:sizer/sizer.dart';

class FamilyCardscreen extends StatefulWidget {
  FamilyCardscreen({Key? key}) : super(key: key);

  @override
  _FamilyCardscreenState createState() => _FamilyCardscreenState();
}

bool val1 = false;
bool val2 = false;
bool val3 = false;
bool switchControl = false;

class _FamilyCardscreenState extends State<FamilyCardscreen> {
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Stack(fit: StackFit.passthrough, children: <Widget>[
            Container(
                height: 70.h,
                child: Image.asset(
                  'assets/images/bg-with-boy.png',
                  fit: BoxFit.fill,
                )),
            Column(
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
                          margin: EdgeInsets.symmetric(
                              horizontal: 5.w, vertical: 5.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.grey.withOpacity(0.4),
                          ),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.white,
                          ),
                          width: 10.w,
                          height: 5.h,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 6.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xfff2f2f2),
                        ),
                        child: Padding(
                          //padding: const EdgeInsets.all(10.0),
                          padding: EdgeInsets.only(
                              left: 5.w, right: 5.w, top: 1.h, bottom: 1.h),
                          child: Text(
                            "HELP?",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.sp),
                          ),
                        ),
                      ),
                    ]),
                Neumorphic(
                  margin: EdgeInsets.fromLTRB(7.w, 5.h, 7.w, 0),
                  style: NeumorphicStyle(
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    shape: NeumorphicShape.flat,
                    depth: 10,
                    lightSource: LightSource.topLeft,
                    color: Colors.white,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 25.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Stack(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 25.h,
                                decoration: BoxDecoration(
                                  image: new DecorationImage(
                                    image: new AssetImage(
                                        "assets/images/cart.png"),
                                    fit: BoxFit.fill,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              Container(
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        alignment: Alignment.topRight,
                                        margin:
                                            EdgeInsets.fromLTRB(0, 2.h, 7.w, 0),
                                        child: Hero(
                                          tag: "assets/images/LOGO.png",
                                          child: Image.asset(
                                            "assets/images/LOGO.png",
                                            width: 10.w,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.symmetric(
                                            horizontal: 5.w),
                                        alignment: Alignment.topLeft,
                                        child: Text("Catherine Hasley",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Calibri',
                                              fontSize: 20.sp,
                                              letterSpacing: 1,
                                              fontWeight: FontWeight.w400,
                                            )),
                                      ),
                                      Row(children: <Widget>[
                                        Container(
                                          alignment: Alignment.topLeft,
                                          margin:
                                              EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                                          child: Text("₹ 11,056.56",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Mukta',
                                                letterSpacing: 1,
                                                fontSize: 20.sp,
                                                fontWeight: FontWeight.w400,
                                              )),
                                        ),
                                      ]),
                                      InkWell(
                                          child: Container(
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                                right: 30, top: 30, bottom: 8),
                                            width: 35.w,
                                            height: 4.h,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white30),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      5.w, 0, 2.w, 0),
                                                  child: Text('VIEW DETAILS',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'Lucidi Sans Unicode',
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      )),
                                                ),
                                                Icon(
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  color: Colors.white,
                                                  size: 11.sp,
                                                ),
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                  child:
                                                      FamilycardDetailsScreen(),
                                                  type: PageTransitionType.fade,
                                                  duration: Duration(
                                                      milliseconds: 200),reverseDuration: Duration(milliseconds: 200)),
                                            );
                                          }),
                                    ]),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
                  alignment: Alignment.topCenter,
                  child: (Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: [
                            InkWell(
                                child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff0159de),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(-2, -2),
                                            color: Colors.grey.shade400)
                                      ]),
                                  child: Image.asset(
                                    "assets/images/pocketmoney.png",
                                    width: 7.w,
                                  ),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Addmoneyscreen(),
                                      duration: Duration(milliseconds: 800),
                                      reverseDuration:
                                          Duration(milliseconds: 800)));
                                }),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(2.w),
                                child: Hero(
                                  tag: "Add Money",
                                  child: Text("Add Money",
                                      style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontFamily: 'Mukta',
                                        letterSpacing: .5,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w900,
                                      )),
                                ),
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                                child: Container(
                                    padding: EdgeInsets.all(3.5.w),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xff0159de),
                                        boxShadow: [
                                          BoxShadow(
                                              spreadRadius: 3,
                                              blurRadius: 10,
                                              offset: Offset(-2, -2),
                                              color: Colors.grey.shade400)
                                        ]),
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: Icon(
                                        FontAwesomeIcons.key,
                                        color: Colors.white,
                                        size: 15.sp,
                                      ),
                                    )
                                    //Image.asset("assets/images/addchild.png",width: 25,),
                                    ),
                                onTap: () {
                                  Navigator.of(context).push(PageTransition(
                                      type: PageTransitionType.fade,
                                      child: Changepinscreen(),
                                      duration: Duration(milliseconds: 900),
                                      reverseDuration:
                                          Duration(milliseconds: 900)));
                                }),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(2.w),
                                child: Hero(
                                  tag: "Change PIN",
                                  child: Text("Change PIN",
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontFamily: 'Mukta',
                                        letterSpacing: .5,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w900,
                                      )),
                                ),
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            InkWell(
                                child: Container(
                                  padding: EdgeInsets.all(2.w),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff0159de),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 2,
                                            blurRadius: 15,
                                            offset: Offset(-5, -3),
                                            color: Colors.grey.shade400)
                                      ]),
                                  child: Image.asset(
                                      "assets/images/ordercard2.png",
                                      width: 8.w,
                                      color: Colors.white),
                                ),
                                onTap: () {
                                  Navigator.of(context).push(PageTransition(
                                      type: PageTransitionType.fade,
                                      child: OrderCardscreen(),
                                      duration: Duration(milliseconds: 800),
                                      reverseDuration:
                                          Duration(milliseconds: 800)));
                                }),
                            Container(
                              child: Padding(
                                padding: EdgeInsets.all(2.w),

                                child: Text("Order Card",
                                    style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: .5,
                                      fontFamily: 'Mukta',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w900,
                                    )),
                                //fit: BoxFit.fill,
                              ),
                            ),
                          ],
                        ),
                      ])),
                ),
                Container(
                  width: double.infinity,
                  height: 29.h,
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.black, width: 0),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white,
                      ),
                    ],
                  ),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(0)),
                      shape: NeumorphicShape.flat,
                      depth: 10,
                      lightSource: LightSource.topLeft,
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 4.w, top: 1.h),
                          alignment: Alignment.topLeft,
                          child: Text('Settings',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mukta',
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w800)),
                        ),
                        SizedBox(height: 1.h),
                        customSwitch("CARD ACTIVE", val1, toggleSwitch),
                        customSwitch("ONLINE USE", val2, toggleSwitch),
                        customSwitch("MERCHANT USE", val3, toggleSwitch),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ]),
        ],
      ),
    ));
  }

  Widget customSwitch(String text, bool val, Function onChangedMethod) {
    return Padding(
      padding: EdgeInsets.only(top: 0, left: 7.w, right: 7.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
                fontFamily: 'Mukta',
                fontSize: 12.sp,
                letterSpacing: .5,
                fontWeight: FontWeight.w500,
                color: Colors.blueGrey),
          ),
          Spacer(),
          Transform.scale(
              scale: switchControl ? 1.6 : 1.2,
              child: Switch(
                onChanged: toggleSwitch,
                value: switchControl,
                activeColor: Colors.green,
                activeTrackColor: Colors.grey.shade200,
                inactiveThumbColor: Colors.pink,
                inactiveTrackColor: Colors.grey.shade200,
              )),
        ],
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (switchControl == false) {
      setState(() {
        switchControl = true;
        // textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        switchControl = false;
        // textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  void onChangedFunction1(bool newValue1) {
    setState(() {
      val1 = newValue1;
    });
  }

  onChangedFunction2(bool newValue2) {
    setState(() {
      val2 = newValue2;
    });
  }

  onChangedFunction3(bool newValue3) {
    setState(() {
      val3 = newValue3;
    });
  }
}
