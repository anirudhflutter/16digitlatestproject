import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../Wallet%20screen/WalletScreen.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:sizer/sizer.dart';

class PayAmountscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return PayAmountscreenState();
  }
}

class PayAmountscreenState extends State<PayAmountscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
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
                                margin: EdgeInsets.fromLTRB(7.w, 6.h, 7.w, 0),
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
                          ],
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20.w, 0, 5.w, 0),
                            // height: 45,
                            //color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 0),
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      new BoxShadow(
                                        color: Colors.blue,
                                      ),
                                    ],
                                  ),
                                  alignment: Alignment.center,
                                  //color: Colors.blue[800],
                                  width: 20.w,
                                  height: 7.h,
                                  child: Text("KS",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 11.sp)),
                                ),
                                SizedBox(width: 2.w),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Kabir Singh",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Mukta',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w400,
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(top: 0),
                                        child: Text("+91 987654321",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Mukta',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500,
                                            )),
                                      ),
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
                  new Container(
                    height: MediaQuery.of(context).size.height * .65,
                    color: Colors.white,
                  )
                ],
              ),
              new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .21,
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
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: 0.0, right: 0, top: 3.h, bottom: 1.h),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.74,
                          // width: MediaQuery.of(context).size.width,
                          //width:double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //color: Color(0xfff2f2f2),
                            //color: Colors.red
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Neumorphic(
                                style: NeumorphicStyle(
                                    boxShape: NeumorphicBoxShape.roundRect(
                                        BorderRadius.circular(20)),
                                    shape: NeumorphicShape.flat,
                                    depth: 4,
                                    lightSource: LightSource.bottom,
                                    color: Colors.white
                                    //color: Color(0xfff2f2f2),
                                    ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 5.w,
                                      right: 5.w,
                                      top: 1.h,
                                      bottom: 1.h),
                                  child: Text(
                                    '11 Jun 2021',
                                    style: TextStyle(
                                      color: Colors.blue[800],
                                      fontFamily: 'Mukta',
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 1.h),
                                height: 55.h,
                                //height: double.infinity,
                                child: SingleChildScrollView(
                                  child: Container(
                                    decoration: new BoxDecoration(),
                                    //height: MediaQuery.of(context).size.height,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 0.0, horizontal: 1.w),
                                      child: ListView(
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        physics: NeverScrollableScrollPhysics(),
                                        children: List.generate(choices.length,
                                            (index) {
                                          return Center(
                                            child: SelectCard(
                                                choice: choices[index]),
                                          );
                                        }),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              /*  Container(
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          left: 30, right: 20,top: 10),
                                      height: 120,
                                      width: 220,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment
                                            .end,
                                        mainAxisAlignment: MainAxisAlignment
                                            .start,
                                        children: [
                                          Expanded(
                                            child: Stack(
                                              children: [
                                                Container(
                                                  width: 220,
                                                  height: 120,
                                                  decoration: BoxDecoration(
                                                    image: new DecorationImage(
                                                      image: new AssetImage(
                                                          "assets/images/chat.png"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                    borderRadius: BorderRadius.circular(
                                                        20),
                                                  ),
                                                ), Column(
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .end,
                                                    mainAxisAlignment: MainAxisAlignment
                                                        .start,
                                                    children: <Widget>[
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 20, right: 0,top: 20),
                                                        alignment: Alignment.topLeft,
                                                        child: Row(
                                                          children: [
                                                            Text(
                                                                "Paid",
                                                                style: TextStyle(
                                                                    color: Colors.black,
                                                                    fontStyle: FontStyle
                                                                        .normal,
                                                                    fontWeight: FontWeight
                                                                        .bold,
                                                                    fontSize: 14)),
                                                            Icon(Icons
                                                                .check_circle_rounded,
                                                              color: Colors.green,
                                                              size: 20,)
                                                          ],
                                                        ),
                                                      ), Row(
                                                          children: <Widget>[
                                                            Container(
                                                              alignment: Alignment
                                                                  .topLeft,
                                                              margin: EdgeInsets
                                                                  .fromLTRB(
                                                                  20, 5, 5, 0),
                                                              child: Text(
                                                                  "₹",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue[800],
                                                                      fontStyle: FontStyle
                                                                          .normal,
                                                                      fontWeight: FontWeight
                                                                          .bold,
                                                                      fontSize: 18)),),
                                                            Container(
                                                              alignment: Alignment
                                                                  .topLeft,
                                                              margin: EdgeInsets.only(
                                                                  top: 5),
                                                              child: Text(
                                                                  "1,000",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .blue[800],
                                                                      fontStyle: FontStyle
                                                                          .normal,
                                                                      fontWeight: FontWeight
                                                                          .bold,
                                                                      fontSize: 22)),),
                                                          ]
                                                      ), InkWell(
                                                          child: Container(
                                                            alignment: Alignment.center,
                                                            margin: EdgeInsets.only(
                                                                right: 30,
                                                                top: 10,
                                                                bottom: 8),
                                                            width: 110,
                                                            height: 30,
                                                            decoration: BoxDecoration(
                                                                borderRadius: BorderRadius
                                                                    .circular(10),
                                                                //color: Color(0xFFDC206B),
                                                          */ /*      boxShadow: [
                                                                  BoxShadow(
                                                                      spreadRadius: 2,
                                                                      blurRadius: 15,
                                                                      offset: Offset(
                                                                          -5, -3),
                                                                      color: Colors
                                                                          .white
                                                                  )
                                                                ]*/ /*
                                                            ),
                                                            child: Row(
                                                              mainAxisAlignment: MainAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      10, 0, 10, 0),
                                                                  child: Text(
                                                                      '07 jun,8:55PM',
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .white,
                                                                          fontStyle: FontStyle
                                                                              .normal,
                                                                          fontWeight: FontWeight
                                                                              .bold,
                                                                          fontSize: 10)),
                                                                ),
                                                                Icon(Icons
                                                                    .check_circle_rounded,
                                                                  color: Colors.white,
                                                                  size: 20,)
                                                              ],
                                                            ),
                                                          ), onTap: () {
                                                      */ /*  Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  FamilycardDetailsScreen()),
                                                        );*/ /*
                                                      }
                                                      ),

                                                    ]
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),


                            Padding(
                              padding: const EdgeInsets.only(right: 20.0,top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: DottedBorder(
                                      color: Colors.black,
                                      strokeWidth: 1,
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(10),
                                      padding: EdgeInsets.only(left: 20,top: 2,bottom: 2,right: 20),
                                      child: Row(
                                        children: [
                                          Text('Thanks',style: TextStyle(color: Colors.black87
                                              ,fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,fontSize: 14),
                                            textAlign: TextAlign.center,
                                          ),Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: Icon(Icons.volunteer_activism,
                                              color: Colors.yellowAccent[700],
                                              size: 22,),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ), DottedBorder(
                                    color: Colors.black,
                                    strokeWidth: 1,
                                    borderType: BorderType.RRect,
                                    radius: Radius.circular(10),
                                    padding: EdgeInsets.only(left: 20,top: 2,bottom: 2,right: 20),
                                    child: Row(
                                      children: [
                                        Text('Done',style: TextStyle(color: Colors.black87,fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,fontSize: 14),
                                          textAlign: TextAlign.center,
                                        ),Padding(
                                          padding: const EdgeInsets.only(left: 8.0),
                                          child: Icon(Icons.thumb_up_rounded,
                                            color: Colors.yellowAccent[700],
                                            size: 22,),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                                ],
                              ),
                            ),*/

                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Neumorphic(
                                      // margin:const EdgeInsets.only( left: 10, top: 0, right: 10,bottom: 20),
                                      style: NeumorphicStyle(
                                        depth: NeumorphicTheme.embossDepth(
                                            context),
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(20)),
                                        intensity: 10.0,
                                        lightSource: LightSource.topLeft,
                                        //color: Colors.white
                                        color: Color(0xffecf0f2),
                                      ),

                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 70.w,
                                            alignment: Alignment.center,
                                            margin: EdgeInsets.only(
                                              left: 2.w,
                                              top: 1.h,
                                              right: 5.w,
                                              bottom: 2.h,
                                            ),
                                            height: 8.h,
                                            //width: double.infinity,
                                            decoration: BoxDecoration(
                                              //   color: Colors.blue[800],
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Neumorphic(
                                              style: NeumorphicStyle(
                                                boxShape: NeumorphicBoxShape
                                                    .roundRect(
                                                        BorderRadius.circular(
                                                            20)),
                                                shape: NeumorphicShape.flat,
                                                depth: 4,
                                                lightSource: LightSource.bottom,
                                                //color: Colors.white
                                                color: Color(0xffd1d9e6),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    height: 6.h,
                                                    color: Colors.transparent,
                                                    width: 55.w,
                                                    child: TextFormField(
                                                      textAlign:
                                                          TextAlign.start,
                                                      cursorColor:
                                                          Colors.blueGrey,
                                                      keyboardType:
                                                          TextInputType.text,
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blueGrey),
                                                      decoration:
                                                          InputDecoration(
                                                        enabledBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .transparent),
                                                        ),
                                                        focusedBorder:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .transparent),
                                                        ),
                                                        border:
                                                            UnderlineInputBorder(
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .transparent),
                                                        ),
                                                        contentPadding:
                                                            EdgeInsets.only(
                                                                left: 4.w,
                                                                bottom: 1.h,
                                                                top: 0,
                                                                right: 4.w),
                                                        hintText:
                                                            "Send Message",
                                                        hintStyle: TextStyle(
                                                          color: Colors
                                                              .blueGrey[300],
                                                          fontFamily: 'Mukta',
                                                          fontSize: 11.sp,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Neumorphic(
                                                    margin:
                                                        EdgeInsets.only(top: 0),
                                                    style: NeumorphicStyle(
                                                      depth: NeumorphicTheme
                                                          .embossDepth(context),
                                                      boxShape:
                                                          NeumorphicBoxShape
                                                              .roundRect(
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                      intensity: 10.0,
                                                      lightSource:
                                                          LightSource.topLeft,
                                                      //color: Colors.white
                                                      color: Color(0xffd1d9e6),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              6.0),
                                                      child: Icon(
                                                        Icons.add,
                                                        color: Colors.black,
                                                        size: 20.sp,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                                color: Colors.blue[900],
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            margin: EdgeInsets.only(
                                                left: 0, right: 4.w),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5.w,
                                                  right: 5.w,
                                                  top: 1.h,
                                                  bottom: 1.h),
                                              child: Text(
                                                'Pay ',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Mukta',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    required this.imagechat,
    required this.paid,
    required this.icon,
    required this.rupeessymbol,
    required this.rupee,
    required this.dateandtime,
    required this.iconcheckwhite,
    required this.thanks,
    required this.thanksimage,
    required this.done,
    required this.doneimage,
  });

  final String imagechat;
  final String paid;
  final IconData icon;
  final String rupeessymbol;
  final String rupee;
  final String dateandtime;
  final IconData iconcheckwhite;
  final String thanks;
  final String thanksimage;
  final String done;
  final String doneimage;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      imagechat: ('assets/images/chat.png'),
      paid: "Paid",
      icon: Icons.check_circle_rounded,
      rupeessymbol: '₹',
      rupee: '1,000',
      dateandtime: "07 jun,8:55PM",
      iconcheckwhite: Icons.check_circle_rounded,
      thanks: "Thanks",
      thanksimage: ('assets/images/prayer.png'),
      done: "Done",
      doneimage: ('assets/images/like.png')),
  Choice(
      imagechat: ('assets/images/chat.png'),
      paid: "Paid",
      icon: Icons.check_circle_rounded,
      rupeessymbol: '₹',
      rupee: '5,000',
      dateandtime: "07 jun,8:55PM",
      iconcheckwhite: Icons.check_circle_rounded,
      thanks: "Thanks",
      thanksimage: ('assets/images/prayer.png'),
      done: "Done",
      doneimage: ('assets/images/like.png')),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(left: 7.w, right: 5.w, top: 0),
              height: 20.h,
              width: 50.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: 55.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                            image: new DecorationImage(
                              image: new AssetImage(choice.imagechat),
                              fit: BoxFit.fill,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(
                                    left: 5.w, right: 0, top: 2.h),
                                alignment: Alignment.topLeft,
                                child: Row(
                                  children: [
                                    Text(choice.paid,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w700,
                                        )),
                                    Icon(
                                      choice.icon,
                                      color: Colors.green,
                                      size: 12.sp,
                                    )
                                  ],
                                ),
                              ),
                              Row(children: <Widget>[
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin:
                                      EdgeInsets.fromLTRB(5.w, 0.5.h, 1.w, 0),
                                  child: Text(choice.rupeessymbol,
                                      style: TextStyle(
                                          color: Colors.blue[800],
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18)),
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.only(top: 0),
                                  child: Text(choice.rupee,
                                      style: TextStyle(
                                          color: Colors.blue[800],
                                          fontFamily: 'Mukta',
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600)),
                                ),
                              ]),
                              InkWell(
                                  child: Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.only(
                                        right: 7.w, top: 1.h, bottom: 0.5.h),
                                    height: 5.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      //color: Color(0xFFDC206B),
                                      /*      boxShadow: [
                                                                BoxShadow(
                                                                    spreadRadius: 2,
                                                                    blurRadius: 15,
                                                                    offset: Offset(
                                                                        -5, -3),
                                                                    color: Colors
                                                                        .white
                                                                )
                                                              ]*/
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              20.w, 0, 1.w, 0),
                                          child: Text(choice.dateandtime,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Mukta',
                                                fontSize: 7.sp,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                        Icon(
                                          choice.iconcheckwhite,
                                          color: Colors.white,
                                          size: 9.sp,
                                        )
                                      ],
                                    ),
                                  ),
                                  onTap: () {
                                    /*  Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) =>
                                                                FamilycardDetailsScreen()),
                                                      );*/
                                  }),
                            ]),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 5.w, top: 0, bottom: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: DottedBorder(
                    color: Colors.black,
                    strokeWidth: 1,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(10),
                    padding: EdgeInsets.only(
                        left: 5.w, top: .5.h, bottom: .5.h, right: 5.w),
                    child: Row(
                      children: [
                        Text(
                          choice.thanks,
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'Mukta',
                            fontSize: 9.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 2.w),
                          child: Image.asset(
                            choice.thanksimage,
                            color: Colors.yellowAccent[700],
                            width: 5.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                DottedBorder(
                  color: Colors.black,
                  strokeWidth: 1,
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10),
                  padding: EdgeInsets.only(
                      left: 5.w, top: .5.h, bottom: .5.h, right: 5.w),
                  child: Row(
                    children: [
                      Text(
                        choice.done,
                        style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Mukta',
                          fontSize: 9.sp,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 2.w),
                        child: Image.asset(
                          choice.doneimage,
                          color: Colors.yellowAccent[700],
                          width: 5.w,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
