import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:page_transition/page_transition.dart';
import '../Famcard%20screen/DeliveryAddressscreen.dart';
import 'package:sizer/sizer.dart';

class OrderCardscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return OrderCardscreenState();
  }
}

class OrderCardscreenState extends State<OrderCardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Add money screen"),
      ),*/
      // appbar given
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 7.w),
                    alignment: Alignment.topCenter,
                    height: 65.h,
                    // color: Colors.blue,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                      //colors: [Colors.green, Colors.blue]
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                  margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
                                  //color: Colors.red,
                                  // width: 100,
                                  //height: 45,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.w),
                                      color: Colors.white,
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
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
                                height: 5.h,
                                width: 10.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.w),
                                    //color: Color(0xfff2f2f2),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          color: Colors.white)
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.all(1.w),
                                  child: Text(
                                    "HELP",
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8.sp),
                                  ),
                                ),
                              )
                            ]),
                        Padding(
                          padding: EdgeInsets.all(1.w),
                          child: Container(
                            child: Text('Order Card',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: .8,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(10.w, 1.h, 10.w, 0),
                          width: double.infinity,
                          height: 19.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                child: Stack(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.w, 0.5.h, 10.w, 0),
                                      width: double.infinity,
                                      height: 18.h,
                                      decoration: BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                              "assets/images/cart.png"),
                                          fit: BoxFit.fill,
                                        ),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      alignment: Alignment.topRight,
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(
                                          10.w, 0.5.h, 10.w, 0),
                                      width: double.infinity,
                                      height: 18.h,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(20)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.transparent),
                                        child: Container(
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: <Widget>[
                                                Container(
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 2.h, 5.w, 0),
                                                  child: Hero(
                                                    tag:
                                                        "assets/images/LOGO.png",
                                                    child: Image.asset(
                                                      "assets/images/LOGO.png",
                                                      width: 11.w,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 2.h, 0.w, 0),
                                                  alignment: Alignment.center,
                                                  child: Text("Smart Card",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12.sp)),
                                                ),
                                                Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2.w,
                                                                4.h,
                                                                5.w,
                                                                0),
                                                        child: Image.asset(
                                                          "assets/images/card_chip.png",
                                                          width: 7.w,
                                                        ),
                                                      ),
                                                      Container(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                0, 4.h, 2.w, 0),
                                                        child: Image.asset(
                                                          "assets/images/master-card.png",
                                                          width: 12.w,
                                                        ),
                                                      ),
                                                    ]),
                                              ]),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                          alignment: Alignment.center,
                          child: Text("within 7 days delivery",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.sp)),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 65.h,
                    color: Colors.white,
                  )
                ],
              ),
              new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(top: 40.h, right: 0.0, left: 0.0),
                child: Container(
                  height: 60.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff2f2f2),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                      child: Container(
                        //height: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.w),
                          color: Color(0xfff2f2f2),
                        ),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              depth: NeumorphicTheme.embossDepth(context),
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(10.w)),
                              intensity: 10.0,
                              lightSource: LightSource.topLeft,
                              color: Colors.transparent),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(5.w, 4.h, 5.w, 0),
                                // width:double.infinity
                                //height: 70,

                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: double.infinity,
                                      height: 8.h,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(2.w)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.blueGrey[200]!
                                                .withOpacity(0.7)),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 1.h, 3.w, 1.h),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text('Name on Card',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey.shade600,
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 9.sp)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 0.5.h, 4.w, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        'Karunnya Chaudhary',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            letterSpacing: 1,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 10.sp)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              0, 2.h, 0, 1.h),
                                          width: double.infinity,
                                          height: 8.h,
                                          child: Neumorphic(
                                            style: NeumorphicStyle(
                                                boxShape: NeumorphicBoxShape
                                                    .roundRect(
                                                        BorderRadius.circular(
                                                            2.w)),
                                                shape: NeumorphicShape.flat,
                                                depth: 4,
                                                lightSource:
                                                    LightSource.topLeft,
                                                color: Colors.blueGrey[200]!
                                                    .withOpacity(0.7)),
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                3.w,
                                                                1.h,
                                                                3.w,
                                                                1.h),
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                            'Delivery Address',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .grey
                                                                    .shade600,
                                                                letterSpacing:
                                                                    .5,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize:
                                                                    9.sp)),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.fromLTRB(
                                                                2.w,
                                                                0.5.h,
                                                                4.w,
                                                                0),
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              color:
                                                                  Colors.black,
                                                              size: 15.sp,
                                                            ),
                                                            SizedBox(
                                                              width: 4.w,
                                                            ),
                                                            Text(
                                                                'Add address to proceed',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    letterSpacing:
                                                                        1,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        10.sp)),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                    width: 10.w,
                                                    height: 5.h,
                                                    alignment: Alignment.center,
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 2.w, 0),
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.w),
                                                        color: Colors
                                                            .blueGrey[300]!
                                                            .withOpacity(1),
                                                        boxShadow: [
                                                          BoxShadow(
                                                              spreadRadius: 3,
                                                              blurRadius: 10,
                                                              offset: Offset(
                                                                  -1, -1),
                                                              color: Colors
                                                                  .transparent)
                                                        ]),
                                                    child: Icon(Icons.add,
                                                        color: Colors.white,
                                                        size: 20.sp)),
                                              ],
                                            ),
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                                type: PageTransitionType.fade,
                                                child: DeliveryAddressscreen(),
                                                duration:
                                                    Duration(milliseconds: 800),
                                                reverseDuration: Duration(
                                                    milliseconds: 800)),
                                          );
                                        }),
                                    Container(
                                      margin:
                                          EdgeInsets.fromLTRB(0, 1.h, 0, 1.h),
                                      width: double.infinity,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(2.w)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.grey.shade200),
                                        child: Column(
                                          children: [
                                            Row(
                                              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                              children: [
                                                Neumorphic(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 3.w,
                                                      vertical: 1.h),
                                                  style: NeumorphicStyle(
                                                    depth: NeumorphicTheme
                                                        .embossDepth(context),
                                                    boxShape: NeumorphicBoxShape
                                                        .roundRect(BorderRadius
                                                            .circular(7.w)),
                                                    intensity: 10.0,
                                                    lightSource:
                                                        LightSource.topLeft,
                                                    color: Color(0xffD1D9E6)
                                                        .withOpacity(0.5),
                                                  ),
                                                  child: Container(
                                                    height: 6.h,
                                                    width: 12.w,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle),
                                                    alignment: Alignment.center,
                                                    child: Icon(
                                                        FontAwesomeIcons
                                                            .userCheck,
                                                        color: Colors.grey,
                                                        size: 18.sp),
                                                  ),
                                                ),
                                                Text('I have a referral code',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .blue.shade700,
                                                        letterSpacing: 1,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 12.sp)),
                                                Expanded(
                                                  child: Container(
                                                      margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 0, 1.h, 0),
                                                      alignment:
                                                          Alignment.centerRight,
                                                      child: Icon(
                                                          Icons
                                                              .arrow_forward_ios,
                                                          color: Colors.grey,
                                                          size: 11.sp)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      alignment: Alignment.center,
                                      child: InkWell(
                                        child: Container(
                                          //alignment: Alignment.bottomCenter,
                                          margin: EdgeInsets.only(
                                            left: 5.w,
                                            top: 0,
                                            right: 5.w,
                                            bottom: 5.h,
                                          ),
                                          height: 7.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(0.2),
                                                offset: Offset(5,20), blurRadius: 10
                                              )
                                            ],
                                            color: Colors.blue[800],
                                            // color: const Color.fromARGB(255, 253, 188, 51),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              Text('P',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      letterSpacing: 1,
                                                      wordSpacing: 10,
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 10.sp,
                                                  ),
                                              ),
                                              Text('A',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),Text('Y ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text('R',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text('S. ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text('9',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),
                                              Text('9',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: 1,
                                                  wordSpacing: 10,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 10.sp,
                                                ),
                                              ),

                                            ],
                                          ),
                                        ), /*onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomeBottomappbar()),
                                        );
                                      }*/
                                      ),
                                    ),
                                  ],
                                ),
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
      ),
    );
  }
}

/*Scaffold(// appbar given
        body:Container(
            child:Container(
              margin:EdgeInsets.fromLTRB(20, 50, 20, 0),
              width: double.infinity,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius:BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.topLeft,
                    //colors: [Colors.green, Colors.blue]
                    colors: <Color>[
                      Color(0xff002860),
                      Color(0xff01142b),

                    ],
                  )
              ),
              //color: Colors.orange,
              /* child: Center
              (*/
              child: Column(
                 /* crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment:MainAxisAlignment.start,*/
                  children: <Widget>[
                    Padding(
                      padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Container(
                        alignment: Alignment.topRight,
                        margin:EdgeInsets.fromLTRB(0, 10, 10, 0),
                        //color: Colors.red,
                        // width: 70,
                        // height: 70,
                        child:Padding(
                          padding: const EdgeInsets.all(0.0),
                            child: Icon(Icons.more_vert,
                              color: Colors.white,
                              size: 22,)
                        ),),
                          //fit: BoxFit.fill,
                        ),

                    SizedBox(width: 0),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        margin:EdgeInsets.fromLTRB(20, 0, 20, 0),
                        alignment: Alignment.topLeft,
                        //child: Image.asset("assets/images/rewards.png",width: 22,),
                        child: Image.asset("assets/images/visa_logo.png",width: 70,),
                      ),
                    ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Container(
                            alignment: Alignment.topLeft,
                            margin:EdgeInsets.fromLTRB(20, 10, 20, 0),
                            child: Text(" 7656         5432        3334        2234 ",
                                style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,fontSize: 14)),),
                          Padding(
                            padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              alignment: Alignment.topRight,
                              margin:EdgeInsets.fromLTRB(20, 5, 20, 0),
                              //color: Colors.red,
                              // width: 70,
                              // height: 70,
                              child:Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Image.asset("assets/images/card_chip.png",width: 22,),
                              ),),
                            //fit: BoxFit.fill,
                          ),
                        ]
                    ),Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:<Widget>[
                          Container(

                            alignment: Alignment.topLeft,
                            margin:EdgeInsets.fromLTRB(20, 20, 20, 0),
                            child: Text("KARUNNYA",
                                style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,fontSize: 14)),),
                          Container(
                            alignment: Alignment.topRight,
                            margin:EdgeInsets.fromLTRB(20, 20, 20, 0),
                            //color: Colors.red,
                            // width: 70,
                            // height: 70,
                            child:Text("BALANCE: ₹ 500/-",
                                style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,fontSize: 14)),
                          ) ]
                    ),

                  ]
              ),

        ),

        )
    );*/
