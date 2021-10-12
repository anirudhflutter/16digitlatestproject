import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class DeliveryAddressscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DeliveryAddressscreenState();
  }
}

class DeliveryAddressscreenState extends State<DeliveryAddressscreen> {
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
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 1.h),
                    alignment: Alignment.topCenter,
                    height: MediaQuery.of(context).size.height * .65,
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
                                  margin: EdgeInsets.fromLTRB(5.w, 6.h, 5.w, 0),
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
                                //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                margin: EdgeInsets.fromLTRB(5.w, 6.h, 5.w, 0),
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
                                child: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xfff2f2f2),
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(-1, -1),
                                            color: Colors.white)
                                      ]),
                                  child: Padding(
                                    padding:  EdgeInsets.all(2.w),
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
                              )
                            ]),
                        Padding(
                          padding:  EdgeInsets.all(1.w),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                            child: Text('Delivery Address',
                                style: TextStyle(
                                    color: Colors.white,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: MediaQuery.of(context).size.height * .65,
                    color: Colors.white,
                  )
                ],
              ),
              new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .23,
                    right: 0.0,
                    left: 0.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.30,
                  //height: 550,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xfff2f2f2),
                  ),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    decoration: BoxDecoration(
                     shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Padding(
                      // padding: const EdgeInsets.al0l(40.0),
                      padding:  EdgeInsets.fromLTRB(3.w, 2.h, 3.w, 2.h),
                      child: Container(
                        //height: MediaQuery.of(context).size.height/2,
                        //height: 550,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Color(0xfff2f2f2),
                        ),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                              depth: NeumorphicTheme.embossDepth(context),
                              boxShape: NeumorphicBoxShape.roundRect(
                                  BorderRadius.circular(20)),
                              intensity: 10.0,
                              lightSource: LightSource.topLeft,
                              color: Colors.transparent),
                          child: Column(
                            //crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(3.w, 2.h, 3.w, 0),
                                // width:double.infinity
                                //height: 70,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.start,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 2.h, 0, 4),
                                      width: double.infinity,
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: 8.h,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(10)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.grey[400]),
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
                                                    child: Text(
                                                        'House No./Building Name*',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[200],
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 9.sp)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 0, 3.w, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        'Vasundhara Enclave',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 9.sp)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(

                                                height: 7.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.fromLTRB(
                                                    3.w, 1.h, 3.w, 1.h),
                                                child: Icon(
                                                    Icons.home_work_outlined,
                                                    color: Colors.grey[300],
                                                    size: 25.sp)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 1.h),
                                      width: double.infinity,
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: 8.h,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(10)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.grey[400]),
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
                                                        3.w, 0, 3.w, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        'Road name,area,colony*',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[200],
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 9.sp)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 1.h, 3.w, 1.h),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text(
                                                        'Add address to proceed',
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 9.sp)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(

                                                height: 7.h,
                                                alignment:
                                                    Alignment.centerRight,
                                                margin: EdgeInsets.fromLTRB(
                                                    3.w, 1.h, 3.w, 1.h),
                                                child: Icon(Icons.location_on,
                                                    color: Colors.grey[300],
                                                    size: 30)),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                      width: double.infinity,
                                      padding: EdgeInsets.all(0),
                                      decoration: BoxDecoration(
                                        // color: Colors.white,
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      height: 7.h,
                                      child: Neumorphic(
                                        style: NeumorphicStyle(
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(10)),
                                            shape: NeumorphicShape.flat,
                                            depth: 4,
                                            lightSource: LightSource.topLeft,
                                            color: Colors.grey[400]),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  3.w, 1.h, 3.w, 1.h),
                                              alignment: Alignment.topLeft,
                                              child: Text('Landmark(optional)',
                                                  style: TextStyle(
                                                      color: Colors.grey[200],
                                                      letterSpacing: .5,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 9.sp)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 10, 10, 4),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 20, 0),
                                            //width: 120,
                                            width: 30.w,
                                            //width: double.infinity,
                                            padding: EdgeInsets.all(0),
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            height: 55,
                                            child: Neumorphic(
                                              style: NeumorphicStyle(
                                                  boxShape: NeumorphicBoxShape
                                                      .roundRect(
                                                          BorderRadius.circular(
                                                              10)),
                                                  shape: NeumorphicShape.flat,
                                                  depth: 4,
                                                  lightSource:
                                                      LightSource.topLeft,
                                                  color: Colors.grey[400]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        14, 0, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text('City',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[200],
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 30.w,
                                            margin:
                                                EdgeInsets.fromLTRB(0, 0, 0, 0),

                                            // width: double.infinity,
                                            padding: EdgeInsets.all(0),
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            height: 6.h,
                                            child: Neumorphic(
                                              style: NeumorphicStyle(
                                                  boxShape: NeumorphicBoxShape
                                                      .roundRect(
                                                          BorderRadius.circular(
                                                              10)),
                                                  shape: NeumorphicShape.flat,
                                                  depth: 4,
                                                  lightSource:
                                                      LightSource.topLeft,
                                                  color: Colors.grey[400]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 0, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: Text('State',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .grey[200],
                                                            letterSpacing: .5,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12)),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                      child: Row(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                0, 0, 10.w, 0),
                                            width: 30.w,
                                            //width: double.infinity,
                                            decoration: BoxDecoration(
                                              // color: Colors.white,
                                              color: Colors.grey,
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            //height: 55,
                                            child: Neumorphic(
                                              style: NeumorphicStyle(
                                                  boxShape: NeumorphicBoxShape
                                                      .roundRect(
                                                          BorderRadius.circular(
                                                              10)),
                                                  shape: NeumorphicShape.flat,
                                                  depth: 4,
                                                  lightSource:
                                                      LightSource.topLeft,
                                                  color: Colors.grey[400]),
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        0, 0, 0, 0),
                                                    alignment:
                                                        Alignment.topLeft,
                                                    child: /* Text('ZIP code',style: TextStyle(color: Colors.grey[200],fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.normal,fontSize: 12)),*/

                                                        TextField(
                                                      cursorColor:
                                                          Colors.greenAccent,
                                                      decoration: InputDecoration(
                                                          hintText: 'ZIP code',
                                                          hintStyle: TextStyle(
                                                              color: Colors
                                                                  .grey[200],
                                                              letterSpacing: .5,
                                                              fontWeight:
                                                                  FontWeight.w500,
                                                              fontSize: 9.sp),
                                                          border: OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10.0))),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin:
                                            EdgeInsets.fromLTRB(0, 0, 0, 0),

                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 0),
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Icon(
                                                    Icons.my_location,
                                                    color: Colors.blue[800],
                                                  ),
                                                  width: 6.w,

                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      0, 0, 0, 5),
                                                  alignment:
                                                  Alignment.bottomLeft,
                                                  child: Text(
                                                      'use my current location',
                                                      style: TextStyle(
                                                          color:
                                                          Colors.blue[800],
                                                          letterSpacing: .5,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          fontSize: 9.sp)),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
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
                                          margin:  EdgeInsets.only(
                                            left: 5.w,
                                            top: 1.h,
                                            right: 5.w,
                                            bottom: 2.h,
                                          ),
                                          height: 40,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            color: Colors.blue[800],
                                            // color: const Color.fromARGB(255, 253, 188, 51),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child:  Text('SAVE ADDRESS',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  letterSpacing: .5,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11.sp)),
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
