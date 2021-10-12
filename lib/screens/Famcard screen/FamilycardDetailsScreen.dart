import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Apply%20screen/ApplyTabscreen.dart';
import '../Apply%20screen/PreApprovedTabscreen.dart';
import '../DOBScreen.dart';
import '../Famcard%20screen/AddMoneyscreen.dart';
import '../Famcard%20screen/Change%20pin%20screen.dart';
import '../Famcard%20screen/OrderCardscreen.dart';
import '../Famcard%20screen/SaveTabscreen.dart';
import '../Famcard%20screen/SpendTabscreen.dart';
import '../Profile%20screen/Profilescreen.dart';
import 'package:sizer/sizer.dart';

class FamilycardDetailsScreen extends StatefulWidget {
  FamilycardDetailsScreen({Key? key}) : super(key: key);

  @override
  _FamilycardDetailsScreenState createState() =>
      _FamilycardDetailsScreenState();
}

class _FamilycardDetailsScreenState extends State<FamilycardDetailsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  int currentIndex = 1;

  void updateTabSelection(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  //EdgeInsets a2; EdgeInsetsDirectional a;
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(children: [
        Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              child: Image.asset(
                'assets/images/bg-with-boy.png',
                fit: BoxFit.fill,
              ),
            ),
            Column(children: [
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 5.w,
                          top: 5.h,
                        ),
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
                      child: Container(
                        child: Padding(
                          //padding: const EdgeInsets.all(10.0),
                          padding:  EdgeInsets.only(
                              left: 3.w, right: 3.w, top: 1.h, bottom: 0),
                          child: Text(
                            "HELP?",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,
                                fontSize: 9.sp),
                          ),
                        ),
                      ),
                    ),
                  ]),
              Neumorphic(
                margin: EdgeInsets.fromLTRB(10.w, 5.h, 10.w, 0),
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
                  height: 20.h,
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
                              height: 20.h,
                              decoration: BoxDecoration(
                                image: new DecorationImage(
                                  image:
                                      new AssetImage("assets/images/cart.png"),
                                  fit: BoxFit.fill,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Container(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.topLeft,
                                      margin:
                                          EdgeInsets.only(left: 5.w, top: 2.h),
                                      child: Hero(
                                        tag: "assets/images/LOGO.png",
                                        child: Image.asset(
                                          "assets/images/LOGO.png",
                                          width: 11.w,
                                        ),
                                      ),
                                    ),

                                    Container(
                                      margin:
                                          EdgeInsets.only(left: 5.w, top: 5.h),
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                          "5535    ****    ****    2296",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Proximanova semibold',
                                            fontSize: 17.sp,
                                            fontWeight: FontWeight.w600,
                                          )),
                                    ),
                                    Container(

                                      margin:
                                          EdgeInsets.fromLTRB(5.w, 4.h, 5.w,0),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              alignment: Alignment.topLeft,
                                              child: Text("KARUNNYA CHAUDHARY",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily:
                                                        'Proximanova semibold',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                  )),
                                            ),
                                            Container(
                                              alignment: Alignment.topRight,
                                              child: Container(
                                                alignment: Alignment.topLeft,
                                                child: Image.asset(
                                                  "assets/images/visa_logo.png",
                                                  width: 15.w,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ]),
                                    ),
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
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 1.h),
                child: Text("Tap card to view CVV & Expiry Date",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Mukta',
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600)),
              ),

              Container(
                //margin: const EdgeInsets.only(top: 0.0),
                margin: EdgeInsets.fromLTRB(5.w, 3.h, 5.w, 1.h),
                alignment: Alignment.topCenter,
                child: (Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: Addmoneyscreen(),
                                    type: PageTransitionType.fade,
                                    curve: Curves.slowMiddle,
                                    duration: Duration(milliseconds: 900),
                                    reverseDuration:
                                    Duration(milliseconds: 900)),
                              );
                            },
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
                                        color: Colors.white)
                                  ]),
                              child: Image.asset(
                                "assets/images/pocketmoney.png",
                                width: 25,
                              ),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Hero(
                                tag: "Add Money",
                                child: Text("Add Money",
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Mukta',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
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
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: Changepinscreen(),
                                    type: PageTransitionType.fade,
                                    curve: Curves.slowMiddle,
                                    duration: Duration(milliseconds: 900),
                                    reverseDuration:
                                    Duration(milliseconds: 900)),
                              );
                            },
                            child: Container(

                              padding: EdgeInsets.all(2.5.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff0159de),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(-2, -2),
                                        color: Colors.white)
                                  ]),
                              child: Icon(Icons.vpn_key, color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Hero(
                                tag: "Change PIN",
                                child: Text("Change PIN",
                                    style: TextStyle(
                                      color: Colors.black,
                                      decoration: TextDecoration.none,
                                      fontFamily: 'Mukta',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
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
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    child: OrderCardscreen(),
                                    type: PageTransitionType.bottomToTop,
                                    curve: Curves.slowMiddle,
                                    duration: Duration(milliseconds: 500),
                                    reverseDuration:
                                    Duration(milliseconds: 500)),
                              );
                            },
                            child: Container(
                              margin:  EdgeInsets.only(top: 0.0),
                              padding: EdgeInsets.all(2.5.w),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xff0159de),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 2,
                                        blurRadius: 15,
                                        offset: Offset(-5, -3),
                                        color: Colors.white)
                                  ]),
                              child: Image.asset("assets/images/ordercard2.png",
                                  width: 6.w, color: Colors.white),
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:  EdgeInsets.all(2.w),

                              child: Text("Order Card",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Mukta',
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w600,
                                  )),
                              //fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ])),
              ), // Tabbar for spend and Save
              /* Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin:EdgeInsets.fromLTRB(0, 0, 0, 20),
                                alignment: Alignment.topCenter,
                                //height: double.infinity,
                                width: double.infinity,
                                height: 250,
                               // height: MediaQuery.of(context).size.height/1.25,
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.black, width: 0),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      new BoxShadow(color: Colors.transparent,),
                                    ],
                                    color: Colors.transparent
                                ),
                                child: DefaultTabController(
                                  length: 2,
                                  //length: _myTabs.length,
                                  initialIndex: 0,

                                  child: Scaffold(
                                    appBar: AppBar(
                                      titleSpacing: 0,
                                      automaticallyImplyLeading: false, // Don't show the leading button
                                      elevation: 0,//this makes tab bar transparent
                                      backgroundColor: Colors.transparent,
                                      bottom: PreferredSize(
                                        preferredSize: Size.fromHeight(0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: Alignment.topCenter,
                                              child:TabBar(
                                                indicatorColor: Colors.blue[400],
                                                indicatorWeight: 2,
                                                indicatorSize: TabBarIndicatorSize.label,
                                                labelColor:  Colors.blue[400],
                                                unselectedLabelColor: Colors.grey,

                                                tabs: [Text("Pre-Approved",
                                                  style: TextStyle(fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.bold,fontSize: 14),),

                                                  Text("Apply",style: TextStyle(fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.bold,fontSize: 14))],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    body: TabBarView(
                                      children: [
                                        PreApprovedTabscreen(),
                                        ApplyTabscreen(),
                                      ],
                                    ),
                                  ),),
                              ),
                            ],
                          ),
*/
              // Tabbar for spend and Save
              /*Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 220,
                                child: new ListView(
                                  children: <Widget>[

                                    new Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          new BoxShadow(color: Colors.white,),
                                        ],
                                      ),
                                      //decoration: new BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
                                      child: new TabBar(
                                        controller: _controller,
                                       // indicatorColor: Colors.blue[400],
                                        indicatorColor: Colors.white,
                                        indicatorWeight: 2,
                                        indicatorSize: TabBarIndicatorSize.label,
                                        labelColor:  Colors.blue[400],
                                        unselectedLabelColor: Colors.grey[600],
                                        tabs: [
                                          new Tab(child:Text('General')),
                                          new Tab(
                                            child:Text('Personal'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    new Container(
                                      // height: MediaQuery.of(context).size.height/0.9,

                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        boxShadow: [
                                          new BoxShadow(color: Colors.transparent,),
                                        ],
                                      ),
                                      child: new TabBarView(
                                        controller: _controller,
                                        children: <Widget>[
                                          new SpendTabscreen(),
                                          new SaveTabscreen(),
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                              ),
                            ],
                          ),*/

              Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 30.h,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black, width: 0),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.white,
                    ),
                  ],
                ),
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Scaffold(
                    appBar: AppBar(
                      backgroundColor: Colors.white,
                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(-2.h),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: TabBar(
                              indicatorColor: Colors.blue[800],
                              //   indicatorColor: Colors.white,
                              indicatorWeight: 2,
                              indicatorSize: TabBarIndicatorSize.label,
                              labelColor: Colors.blue[800],
                              unselectedLabelColor: Colors.grey[600],
                              tabs: [
                                Row(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/images/wallet.png",
                                        width:7.w,
                                      ),
                                      SizedBox(width: 1.w),
                                      Text("Spend",
                                          style: TextStyle(
                                            fontFamily: 'Mukta',
                                            fontSize: 12.sp,
                                            fontWeight: FontWeight.w600,
                                          ))
                                    ]),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/images/piggi2.png",
                                      width: 7.w,
                                    ),
                                    SizedBox(width: 5),
                                    Text("Save",
                                        style: TextStyle(
                                          fontFamily: 'Mukta',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ))
                                  ],
                                ),
                              ]),
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        SpendTabscreen(),
                        SaveTabscreen(),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ],
        ),
      ])),
    ));
  }
}
