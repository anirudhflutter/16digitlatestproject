import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Wallet%20screen/SendMoneyAmountscreen.dart';
import '../Wallet%20screen/SendMoneydetailscreen.dart';
import '../Wallet%20screen/WalletScreen.dart';
import 'package:sizer/sizer.dart';

class SendMoneyscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SendMoneyscreenState();
  }
}

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

class SendMoneyscreenState extends State<SendMoneyscreen> {
  FavoriteMethod _method = FavoriteMethod.flutter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
            child: Container(
              child: Stack(
                children: <Widget>[
                  // The containers in the background
                  Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topCenter,
                        height: MediaQuery.of(context).size.height * .35,
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
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                    //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                    margin: EdgeInsets.fromLTRB(5.w, 7.h, 5.w, 0),
                                    //color: Colors.red,
                                    // width: 100,
                                    //height: 45,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        color: Color(0xffecf0f2),
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
                                SizedBox(width: 0),
                              ],
                            ),
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Hero(
                                  tag: 'send',
                                  child: Text('Send Money',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          decoration: TextDecoration.none,
                                          fontWeight: FontWeight.w700)),
                                ),
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
                          top: MediaQuery.of(context).size.height * .20,
                          right: 0.0,
                          left: 0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.0),
                            topRight: Radius.circular(20.0),
                          ),
                          //color: Colors.white,
                          color: Color(0xffecf0f2),
                        ),
                        child: Column(children: [
                          Padding(
                            padding:  EdgeInsets.all(5.w),
                            child: Container(
                              height: 30.h,
                              alignment: Alignment.center,
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
                                color: Colors.white,
                                //color: Color(0xffecf0f2),

                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  depth: NeumorphicTheme.embossDepth(context),
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  intensity: 10.0,
                                  lightSource: LightSource.topLeft,
                                  shadowDarkColor: Color(0xffecf0f2),
                                  color: Color(0xffecf0f2),
                                  // color: Colors.white
                                ),
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          PageTransition(
                                              type: PageTransitionType.fade,
                                              child: SendMoneydetailscreen(),
                                              duration: Duration(milliseconds: 800),
                                              reverseDuration:
                                              Duration(milliseconds: 800)),
                                        );
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(7.w, 4.h, 7.w, 0),
                                        //width: 270,
                                        width: double.infinity,
                                        height: 7.h,
                                        padding: EdgeInsets.all(0.0),
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                              color:
                                                  Colors.white.withOpacity(0.8),
                                              offset: Offset(-6.0, -6.0),
                                              blurRadius: 8,
                                            ),
                                            BoxShadow(
                                              color: Colors.black
                                                  .withOpacity(0.05),
                                              offset: Offset(6.0, 6.0),
                                              blurRadius: 8.0,
                                            ),
                                          ],
                                          color: Colors.white,
                                          //color: Color(0xffecf0f2),

                                          borderRadius:
                                              BorderRadius.circular(60.0),
                                        ),
                                        child: Neumorphic(
                                          style: NeumorphicStyle(
                                            depth: NeumorphicTheme.embossDepth(
                                                context),
                                            boxShape:
                                                NeumorphicBoxShape.roundRect(
                                                    BorderRadius.circular(60)),
                                            intensity: 10.0,
                                            lightSource: LightSource.topLeft,
                                            shadowDarkColor: Color(0xffecf0f2),
                                            color: Color(0xffecf0f2),
                                            // color: Colors.white
                                          ),
                                          child: Container(
                                            //color: Colors.white,
                                            child: Row(
                                              // mainAxisAlignment: MainAxisAlignment.start,
                                              //crossAxisAlignment: CrossAxisAlignment.center,
                                              children: <Widget>[
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      4.w, 0, 0, 0),
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Icon(
                                                    Icons.search_sharp,
                                                  ),
                                                  width: 7.w,
                                                  height: 6.h,
                                                ),
                                                Text(
                                                    'Enter Name or Mobile Number',
                                                    style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontFamily: 'Mukta',
                                                      fontSize: 11.sp,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    )),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      //margin: const EdgeInsets.only(top: 0.0),
                                      margin:
                                          EdgeInsets.fromLTRB(7.w, 4.h, 7.w, 0),
                                      alignment: Alignment.topCenter,
                                      child: (Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          //crossAxisAlignment: CrossAxisAlignment.center,
                                          children: <Widget>[
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(8.0),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60),
                                                      color: Color(0xff0159de),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            /* spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(0, 0),*/
                                                            spreadRadius: 3,
                                                            blurRadius: 10,
                                                            offset:
                                                                Offset(-2, -2),
                                                            color: Colors.white)
                                                      ]),
                                                  child: Padding(
                                                    padding:
                                                         EdgeInsets.all(
                                                            1.w),
                                                    child: Image.asset(
                                                      "assets/images/bill-pay.png",
                                                      width: 6.w,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Text(
                                                      "To Mobile\nNumber",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey,
                                                          fontFamily: 'Muli',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    //fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(8.0),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60),
                                                      color: Color(0xff0159de),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            /* spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(0, 0),*/
                                                            spreadRadius: 3,
                                                            blurRadius: 10,
                                                            offset:
                                                                Offset(-2, -2),
                                                            color: Colors.white)
                                                      ]),
                                                  child: Padding(
                                                    padding:
                                                         EdgeInsets.all(
                                                            1.w),
                                                    child: Image.asset(
                                                      "assets/images/bank2.png",
                                                      width: 6.w,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Text(
                                                      "To a Bank\nAccount",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey,
                                                          fontFamily: 'Muli',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    //fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  padding: EdgeInsets.all(8.0),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              60),
                                                      color: Color(0xff0159de),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            /* spreadRadius: 4,
                                        blurRadius: 4,
                                        offset: Offset(0, 0),*/
                                                            spreadRadius: 3,
                                                            blurRadius: 10,
                                                            offset:
                                                                Offset(-2, -2),
                                                            color: Colors.white)
                                                      ]),
                                                  child: Padding(
                                                    padding:
                                                         EdgeInsets.all(
                                                            1.w),
                                                    child: Image.asset(
                                                      "assets/images/upi_fevicon.png",
                                                      width: 6.w,
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            6.0),
                                                    child: Text(
                                                      "To UPI\nID",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey,
                                                          fontFamily: 'Muli',
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    //fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                            ),


                                          ])),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),

                          //send money again list view.
                          Container(
                            margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffecf0f2),
                                  )
                                ]),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(8)),
                                shape: NeumorphicShape.flat,
                                depth: 4,
                                lightSource: LightSource.bottom,
                                color: Color(0xffecf0f2),
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 60.w,
                                child: SingleChildScrollView(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffecf0f2),
                                          )
                                        ]),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(7.w, 2.h, 0, 0),
                                          child: Text('Send Money',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontFamily: 'Mukta',
                                                  fontSize: 13.sp,
                                                  fontWeight: FontWeight.w700)),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 1.h),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffecf0f2),
                                                )
                                              ]),
                                          child: ListView(
                                            scrollDirection: Axis.vertical,
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            children: List.generate(
                                                choices.length, (index) {
                                              return Center(
                                                child: SelectCard(
                                                    choice: choices[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffecf0f2),
                                  )
                                ]),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(8)),
                                shape: NeumorphicShape.flat,
                                depth: 4,
                                lightSource: LightSource.bottom,
                                color: Color(0xffecf0f2),
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                height: 60.w,
                                child: SingleChildScrollView(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xffecf0f2),
                                          )
                                        ]),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(7.w, 3.h, 0, 0),
                                          child: Text(
                                              'Send Money To Your Contacts',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontFamily: 'Mukta',
                                                fontSize: 12.sp,
                                                fontWeight: FontWeight.w700,
                                              )),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffecf0f2),
                                                )
                                              ]),
                                          child: ListView(
                                            padding: EdgeInsets.zero,
                                            scrollDirection: Axis.vertical,
                                            shrinkWrap: true,
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            children: List.generate(
                                                choices2.length, (index) {
                                              return Center(
                                                child: SelectCard2(
                                                    choice2: choices2[index]),
                                              );
                                            }),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    required this.name,
    required this.fullname,
    required this.bankname,
    required this.bankimage,
  });

  final String name;
  final String fullname;
  final String bankname;
  final String bankimage;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      name: "KS",
      fullname: "Kabir Singh",
      bankname: "HDFC Bank ***7803",
      bankimage: ("assets/images/hdfc.png")),
  const Choice(
      name: "KS",
      fullname: "Kabir Singh",
      bankname: "HDFC Bank ***7803",
      bankimage: ("assets/images/hdfc.png")),
  const Choice(
      name: "KS",
      fullname: "Kabir Singh",
      bankname: "HDFC Bank ***7803",
      bankimage: ("assets/images/hdfc.png")),
  const Choice(
      name: "KS",
      fullname: "Kabir Singh",
      bankname: "HDFC Bank ***7803",
      bankimage: ("assets/images/hdfc.png")),
  const Choice(
      name: "KS",
      fullname: "Kabir Singh",
      bankname: "HDFC Bank ***7803",
      bankimage: ("assets/images/hdfc.png")),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Color(0xfff2f2f2),
        color: Color(0xffecf0f2),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                //height: 45,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0),
                        shape: BoxShape.circle,
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      //color: Colors.blue[800],
                      width: 10.w,
                      height: 5.h,
                      child: Text(choice.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mukta',
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(choice.fullname,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mukta',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400)),
                          Text(choice.bankname,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mukta',
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w400))
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                        child: Image.asset(
                          choice.bankimage,
                          width: 10.w,
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Choice2 {
  const Choice2({
    required this.name,
    required this.fullname,
    required this.bankname,
  });

  final String name;
  final String fullname;
  final String bankname;
}

const List<Choice2> choices2 = const <Choice2>[
  const Choice2(
    name: "KS",
    fullname: "Kabir Singh",
    bankname: "HDFC Bank ***7803",
  ),
  const Choice2(
    name: "KS",
    fullname: "Kabir Singh",
    bankname: "HDFC Bank ***7803",
  ),
  const Choice2(
    name: "KS",
    fullname: "Kabir Singh",
    bankname: "HDFC Bank ***7803",
  ),
  const Choice2(
    name: "KS",
    fullname: "Kabir Singh",
    bankname: "HDFC Bank ***7803",
  ),
];

class SelectCard2 extends StatelessWidget {
  const SelectCard2({Key? key, required this.choice2}) : super(key: key);
  final Choice2 choice2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      // height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Color(0xfff2f2f2),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Container(
                height: 45,
                child: Row(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 0),
                       shape: BoxShape.circle,
                        boxShadow: [
                          new BoxShadow(
                            color: Colors.blue,
                          ),
                        ],
                      ),
                      alignment: Alignment.center,
                      //color: Colors.blue[800],
                      width: 10.w,
                      height: 5.h,
                      child: Text(choice2.name,
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Mukta',
                              fontSize: 14,
                              fontWeight: FontWeight.w400)),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(choice2.fullname,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Mukta',
                                  fontSize: 11.sp,
                                  fontWeight: FontWeight.w400)),
                          Text(choice2.bankname,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Mukta',
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w500,
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Send money to your contacts
