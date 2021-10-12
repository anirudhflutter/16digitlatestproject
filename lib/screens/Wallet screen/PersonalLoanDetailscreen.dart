import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';
class PersonalLoanDetailscreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return PersonalLoanDetailscreenState();
  }
}
class PersonalLoanDetailscreenState extends State<PersonalLoanDetailscreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    height: 35.h,
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
                        )
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
                                margin:EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(60),
                                    color: Color(0xfff2f2f2),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          color: Colors.white
                                      )
                                    ]
                                ),
                                child: Icon(Icons.arrow_back_rounded,),
                                width: 10.w,height: 5.h,),
                            ),
                            Container(
                              margin:EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                              child: Text('Personal Loan', style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold,fontSize: 11.sp)),),

                          ],
                        ),
                        // ),
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
                      top: MediaQuery.of(context).size.height * .20,
                      right: 0.0,
                      left: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      color: Colors.white,

                    ),child:Column(
                      children: [
                        Padding(
                          padding:  EdgeInsets.all(3.w),
                          child: Container(
                            //height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //color: Color(0xfff2f2f2),
                                color: Colors.white
                            ),

                            child: Neumorphic(
                              style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  intensity: 10.0,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                        child: Text('EMI eg. ₹1,000',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                      ),
                                    ),
                                  ), Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                        child: Text('Date of Birth eg.15-10-1994',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                      ),
                                    ),
                                  ),


                                  Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                            child: Text('Current Work Experience',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                          ),  Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                              child: Icon(Icons.arrow_drop_down,color: Colors.grey[400]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),  Container(
                                    margin:EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                            child: Text('Total Work Experience',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                          ),  Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                              child: Icon(Icons.arrow_drop_down,color: Colors.grey[400]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                            child: Text('select your Resident Type',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                          ),  Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                              child: Icon(Icons.arrow_drop_down,color: Colors.grey[400]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Container(
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                        child: Text('Full Name eg.john Doe',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                      ),
                                    ),
                                  ),Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                            child: Text('Email ID rg.example@domain.com',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 14)),
                                          ),  Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                              child: Icon(Icons.arrow_drop_down,color: Colors.grey[400]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 25.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),
                                    child: Neumorphic(
                                      child: Column(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                            width:double.infinity,
                                            height: 7.h,
                                            child: Text('Have you taken any loan in the past?',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 14)
                                            ),

                                          ),Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Neumorphic(
                                                margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 5.h,
                                                  width: 20.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:BorderRadius.circular(8),
                                                      // color: Color(0xff0f2f2f2),
                                                      color:Colors.white
                                                  ),
                                                  child: Text('Yes',style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                                ),
                                              ),  Neumorphic(
                                                margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 5.h,
                                                  width: 20.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:BorderRadius.circular(8),
                                                      // color: Color(0xff0f2f2f2),
                                                      color:Colors.white
                                                  ),

                                                  child: Text('No',style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                                ),
                                              ),
                                            ],
                                          ), Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                            width:double.infinity,
                                            height: 5.h,

                                            child: Text('Do you have an existing credit card?',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12.sp)
                                            ),

                                          ),Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Neumorphic(
                                                margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 5.h,
                                                  width: 20.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:BorderRadius.circular(8),
                                                      // color: Color(0xff0f2f2f2),
                                                      color:Colors.white
                                                  ),
                                                  child: Text('Yes',style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                                ),
                                              ),  Neumorphic(
                                                margin: EdgeInsets.fromLTRB(8.w, 0, 8.w, 0),
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: 5.h,
                                                  width: 20.w,
                                                  decoration: BoxDecoration(
                                                      borderRadius:BorderRadius.circular(8),
                                                      // color: Color(0xff0f2f2f2),
                                                      color:Colors.white
                                                  ),

                                                  child: Text('No',style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                                                      fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),Container(
                                    margin: EdgeInsets.fromLTRB(8.w, 3.h, 8.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 7.h,
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                        color:Colors.white
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.centerLeft,
                                            margin: EdgeInsets.fromLTRB(7.w, 0, 0, 0),
                                            child: Text('select your Purpose of loan',style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12.sp)),
                                          ),  Expanded(
                                            child: Container(
                                              alignment: Alignment.centerRight,
                                              margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                              child: Icon(Icons.arrow_drop_down,color: Colors.grey[400]),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),



                                  Container(

                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only( left: 20, top: 20, right: 20,
                                      bottom: 20,),
                                    height: 45,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      // color: const Color.fromARGB(255, 253, 188, 51),
                                      borderRadius: BorderRadius.circular(10),
                                    ),

                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,

                                      children: [
                                        Container(
                                          margin: EdgeInsets.only( left: 0, top: 0, right: 20,    bottom: 0,),

                                          child: Text(
                                            'PROCEED',
                                            style: TextStyle(color: Colors.white, fontSize: 16.0),
                                          ),
                                        ),Icon(Icons.forward,color: Colors.white,size: 22,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                            ),
                          ),
                        ),








                      ]),) )],
          ),
        ),
      ),

    );
  }
}








