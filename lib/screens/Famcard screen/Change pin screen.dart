import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';

class Changepinscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ChangepinscreenState();
  }
}

class ChangepinscreenState extends State<Changepinscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /* appBar: AppBar(
        title: Text("Add money screen"),
      ),*/
      // appbar given
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: <Widget>[
            // The containers in the background
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
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
                    ],
                  )),
                  child: Padding(
                    padding: EdgeInsets.only(top: 2.h),
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
                                  margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
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
                                height: 10.w,
                                width: 5.h,
                                margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Colors.white,
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
                                    "?",
                                    style: TextStyle(
                                        color: Colors.blue[800],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12),
                                  ),
                                ),
                              ),
                            ]),
                        Container(

                          child: Hero(
                            tag: 'Change PIN',
                            child: Text('Change PIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.none,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 30.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2.w),
                          ),
                          child: Hero(
                            tag: 'card',
                            child: Column(
                              children: [
                                Expanded(
                                  child: Stack(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
                                        width: double.infinity,
                                        height: 24.h,
                                        decoration: BoxDecoration(
                                          image: new DecorationImage(
                                            image: new AssetImage(
                                                "assets/images/cart.png"),
                                            fit: BoxFit.fill,
                                          ),
                                          borderRadius: BorderRadius.circular(4.w),
                                        ),
                                        alignment: Alignment.topRight,
                                      ),
                                      Container(
                                        margin:
                                        EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
                                        width: double.infinity,
                                        height: 24.h,
                                        child: Neumorphic(
                                          style: NeumorphicStyle(
                                              boxShape:
                                                  NeumorphicBoxShape.roundRect(
                                                      BorderRadius.circular(4.w)),
                                              shape: NeumorphicShape.flat,
                                              depth: 4,
                                              lightSource: LightSource.topLeft,
                                              color: Colors.transparent),
                                          child: Container(
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Container(
                                                    alignment: Alignment.topRight,
                                                    margin: EdgeInsets.fromLTRB(
                                                        3.w, 1.h, 4.w, 0),
                                                    child: Image.asset(
                                                      "assets/images/LOGO.png",
                                                      width: 14.w,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(
                                                        4.w, 0, 1.h, 0),
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Text(
                                                        " 5535  ••••  •••• 2296",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontStyle:
                                                                FontStyle.normal,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 15.sp,letterSpacing: 2)),
                                                  ),
                                                  ListTile(
                                                    title: Text(
                                                      'KARUNNYA CHAUDHARY',
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w600,fontSize: 11.sp),
                                                    ),
                                                    trailing: Image.asset(
                                                      'assets/images/visa_logo.png',
                                                      height: 3.h,
                                                      color: Colors.white,
                                                    ),
                                                  )
                                                ]),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            new Container(
              alignment: Alignment.topCenter,
              padding: new EdgeInsets.only(top: 43.h, right: 0.0, left: 0.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(7.w),
                    topRight: Radius.circular(7.w),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.h),
                  child: Container(
                    //height: 400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
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
                            margin: EdgeInsets.symmetric(horizontal: 7.w,vertical: 2.h),
                            // width:double.infinity
                            //height: 70,
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 1.h, 2.w, 1.h),
                                  alignment: Alignment.topLeft,
                                  child: Text('Old PIN',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 9.sp)),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(10)),
                                        shape: NeumorphicShape.flat,
                                        depth: 4,
                                        lightSource: LightSource.topLeft,
                                        //color: Colors.grey[380]
                                        color: Colors.blueGrey[200]),
                                    /*style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(6)),
                                      */ /*boxShape: NeumorphicBoxShape.roundRect(const BorderRadius.only
                                        (topLeft: Radius.circular(200),
                                          topRight: Radius.circular(200))),*/ /*
                                      intensity: 4.0,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.transparent),*/

                                    child: Padding(
                                      padding:  EdgeInsets.all(1.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              _textFieldOTP(
                                                  first: true, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: false),
                                              _textFieldOTP(
                                                  first: false, last: true),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.h),
                                  alignment: Alignment.topLeft,
                                  child: Text('New PIN',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 9.sp)),
                                ),
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.all(0),
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(2.w),
                                  ),
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(10)),
                                        shape: NeumorphicShape.flat,
                                        depth: 4,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.blueGrey[200]),
                                    child: Padding(
                                      padding:  EdgeInsets.all(1.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              _textFieldOTP2(
                                                  first: true, last: false),
                                              _textFieldOTP2(
                                                  first: false, last: false),
                                              _textFieldOTP2(
                                                  first: false, last: false),
                                              _textFieldOTP2(
                                                  first: false, last: true),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(horizontal: 1.w,vertical: 2.h),
                                  alignment: Alignment.topLeft,
                                  child: Text('Confirm PIN',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.normal,
                                          fontSize: 9.sp)),
                                ),
                                Container(
                                  width: double.infinity,

                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    borderRadius: BorderRadius.circular(2.w),
                                  ),
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(2.w)),
                                        shape: NeumorphicShape.flat,
                                        depth: 4,
                                        lightSource: LightSource.topLeft,
                                        color: Colors.blueGrey[200]),
                                    child: Padding(
                                      padding:  EdgeInsets.all(1.w),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceAround,
                                            children: [
                                              _textFieldOTP3(
                                                  first: true, last: false),
                                              _textFieldOTP3(
                                                  first: false, last: false),
                                              _textFieldOTP3(
                                                  first: false, last: false),
                                              _textFieldOTP3(
                                                  first: false, last: true),
                                            ],
                                          ),
                                        ],
                                      ),
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
                                      margin:  EdgeInsets.only(bottom: 3.h,left: 5.w,right: 5.w),
                                      height: 5.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[800],
                                        // color: const Color.fromARGB(255, 253, 188, 51),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child:  Text(
                                        'CHANGE PIN',
                                        style: TextStyle(
                                          decoration: TextDecoration.none,
                                            color: Colors.white,
                                            fontSize: 12.sp),
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
            )
          ],
        ),
      ),
    );
  }

  Widget _textFieldOTP({bool? first, last}) {
    return Container(
      height: 7.h,
      width: 10.w,
      child: AspectRatio(
        aspectRatio: 1.2,
        child: TextFormField(
          textDirection:TextDirection.ltr ,
          obscureText: true,
          obscuringCharacter: '*',

          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },

          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),

            hintText: "",
            hintStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
        ),
      ),
    );
  }

  Widget _textFieldOTP2({bool? first, last}) {
    return Container(
      height: 7.h,
      width: 10.w,
      child: AspectRatio(
        aspectRatio: 1.2,
        child: TextFormField(
          obscureText: true,
          obscuringCharacter: '*',
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: true,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),

            hintText: "",
            hintStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 12.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
        ),
      ),
    );
  }

  Widget _textFieldOTP3({bool? first, last}) {
    return Container(
      //alignment: Alignment.topCenter,
      height: 7.h,
      width: 10.w,
      child: AspectRatio(
        aspectRatio: 1.2,
        child: TextFormField(
          obscureText: true,
          obscuringCharacter: '*',
          onChanged: (value) {
            if (value.length == 1 && last == false) {
              FocusScope.of(context).nextFocus();
            }
            if (value.length == 0 && first == false) {
              FocusScope.of(context).previousFocus();
            }
          },
          showCursor: true,
          readOnly: false,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            counter: Offstage(),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),

            hintText: "",
            labelStyle: TextStyle(fontSize: 14.sp),
            hintStyle: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.sp,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          keyboardType: TextInputType.number,
          maxLength: 1,
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
