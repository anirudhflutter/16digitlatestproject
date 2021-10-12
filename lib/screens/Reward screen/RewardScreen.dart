import 'dart:math';
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../Track%20screen/Track%20Status.dart';
import 'package:sizer/sizer.dart';

class RewardsScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RewardsScreenState();
  }
}

class RewardsScreenState extends State<RewardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar given
      // backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.topCenter,
                    height: 50.h,
                    // color:Color(0xff0ecf0f2),
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
                        ])),
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.fromLTRB(5.w, 7.h, 5.w, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    color: Color(0xff002860),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          color: Colors.white)
                                    ]),
                                child: Image.asset(
                                  'assets/images/profile.png',

                                  height: 7.h,
                                )),
                            SizedBox(width: 0),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 7.h, 0, 0),
                              child: Text('Hi Kabir',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Mukta',
                                    letterSpacing: 1,
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.w700,
                                  )),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding:  EdgeInsets.all(1.w),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0.5.h, 0, 0),
                                child: Image.asset(
                                  'assets/images/super-coin.png',

                                  height: 4.h,
                                ),
                              ),
                            ),
                            SizedBox(width: 0),
                            Padding(
                              padding:  EdgeInsets.all(2.w),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                child: Text('0',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20.sp)),
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.all(1.w),
                              child: Container(
                                  //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                  margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:  EdgeInsets.all(1.w),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(12.w, 1.h, 0, 0),
                                child: Text(
                                    'SuperCoin Balance',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Oxygen',
                                      letterSpacing: .5,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700,
                                    )),
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              width: 4.w,
                              height: 4.h,
                              child: Image.asset(
                                "assets/images/threedots.png",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Container(
                          //alignment: Alignment.bottomCenter,
                          margin:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
                          height: 7.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            //color: Color(0xff002860),
                            gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.topRight,
                                //colors: [Colors.green, Colors.blue]
                                colors: <Color>[
                                  Color(0xff023b92),
                                  Color(0xff023b92),
                                  Color(0xff004cbc),
                                  Color(0xff0159de),
                                ]),
                            // color: const Color.fromARGB(255, 253, 188, 51),
                            borderRadius: BorderRadius.circular(2.w),
                          ),
                          alignment: Alignment.center,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 5.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child:  Text(
                                    'Search',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.5),
                                      fontFamily: 'Mukta',
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.only(right: 4.w),
                                  child: Container(
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white.withOpacity(0.8),
                                      size: 5.w,
                                    ),
                                    /*Image.asset('assets/images/profile.png',
                                        width: 30,height: 30,)*/
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              new Container(
                alignment: Alignment.topCenter,
                padding: new EdgeInsets.only(
                    top: 40.h,
                    right: 0.0,
                    left: 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(7.w),
                          topRight: Radius.circular(7.w),
                        ),
                        color: Color(0xff0ecf0f2),
                        //color: Colors.green,

                        // color:Color(0xff0ecf0f2),
                      ),
                      child: Container(
                        // margin: const EdgeInsets.only(top: 20.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(7.w),
                            topRight: Radius.circular(7.w),
                          ),
                          //  color: Colors.green,
                          color: Color(0xff0ecf0f2),
                        ),
                        width: double.infinity, //Your desire Width
                        // height: 200,//Your desire Height
                        //margin: const EdgeInsets.only(top: 0.0),
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: 1.h),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                      margin:
                                          EdgeInsets.fromLTRB(7.w, 3.h, 7.w, 0),
                                      child: Text(
                                        'TOP CATEGORIES',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: 'Oxygen',
                                            letterSpacing: .5,
                                            fontSize: 10.sp,
                                            fontWeight: FontWeight.w900),
                                      )),
                                  InkWell(
                                      child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(7.w, 1.h, 7.w, 0),
                                        //width: 50,
                                        padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.h),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2.w),
                                          color: Color(0xff004cbc),
                                        ),
                                        child: Row(
                                          children: [
                                            Text('TRACK STATUS',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Mukta',
                                                    fontSize: 9.sp,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Padding(
                                              padding:  EdgeInsets.symmetric(horizontal: 1.w),
                                              child: Image.asset(
                                                'assets/images/status.png',

                                                height: 1.h,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  TrackStatus()),
                                        );
                                      }),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 1.h, 4.w, 0),
                              height: 22.h,
                              //width: double.infinity,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    List.generate(choices.length, (index) {
                                  return Center(
                                    child: SelectCard(choice: choices[index]),
                                  );
                                }),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.fromLTRB(6.w, 2.h, 4.w, 0),
                                    child: Text(
                                      'Top Cashback Stores',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oxygen',
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    )),
                                InkWell(
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          right: 4.w, top: 3.h,bottom: 0),
                                      child: Row(
                                        children: [
                                          Text('View All',
                                              style: TextStyle(
                                                  color: Color(0xff004cbc),
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8.sp)),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff004cbc),
                                            size: 8.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      /*   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Allsubjects()),
                                  );*/
                                    }),
                              ],
                            ),
                            Container(
                              height: 18.h,
                              margin: EdgeInsets.fromLTRB(6.w, 2.h, 4.w, 0),

                              //width: double.infinity,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    List.generate(choices2.length, (index) {
                                  return Center(
                                    child:
                                        SelectCard2(choice2: choices2[index]),
                                  );
                                }),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                    margin: EdgeInsets.fromLTRB(6.w, 1.h, 4.w, 1.h),
                                    child: Text(
                                      'Lowest Ever Prices- Expiring Soon',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oxygen',
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                InkWell(
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          right: 4.w, top: 1.h,bottom: 1.h),
                                      child: Row(
                                        children: [
                                          Text('View All',
                                              style: TextStyle(
                                                  color: Color(0xff004cbc),
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8.sp)),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff004cbc),
                                            size: 8.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      /*   Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Allsubjects()),
                                  );*/
                                    }),
                              ],
                            ),
                            Container(
                              height: 30.h,
                              margin: EdgeInsets.fromLTRB(1.w, 1.h, 4.w, 0),
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    List.generate(choices3.length, (index) {
                                  return Center(
                                    child:
                                        SelectCard3(choice3: choices3[index]),
                                  );
                                }),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                            margin: EdgeInsets.fromLTRB(6.w, 1.h, 4.w, 1.h),
                                    child: Text(
                                      'Cashback Offers',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Oxygen',
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    )),
                                InkWell(
                                    child: Padding(
                                      padding:  EdgeInsets.only(
                                          top: 2.h, right: 5.w,bottom: 1.h),
                                      child: Row(
                                        children: [
                                          Text('View All',
                                              style: TextStyle(
                                                  color: Color(0xff004cbc),
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 8.sp)),
                                          Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff004cbc),
                                            size: 8.sp,
                                          ),
                                        ],
                                      ),
                                    ),
                                    onTap: () {
                                      /*Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Allsubjects()),
                                  );*/
                                    }),
                              ],
                            ),
                            Container(
                              height: 20.h,
                              margin: EdgeInsets.fromLTRB(2.w, 1.h, 10, 14.h),
                              //width: double.infinity,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    List.generate(choices4.length, (index) {
                                  return Center(
                                    child:
                                        SelectCard4(choice4: choices4[index]),
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice(
      {required this.image,
      required this.name,
      required this.startColor,
      required this.endColor});

  final String image;
  final String name;
  final Color startColor;
  final Color endColor;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      image: ('assets/images/esst.png'),
      name: ("ESSENTIALS"),
      startColor: Color(0xfffeebff),
      endColor: Color(0xfff3cdf4)),
  const Choice(
      image: ('assets/images/grocerise.png'),
      name: ("GROCERY"),
      startColor: Color(0xffeff1fe),
      endColor: Color(0xffe1e5fe)),
  const Choice(
      image: ('assets/images/health.png'),
      name: ("HEALTH & MEDICINE"),
      startColor: Color(0xffeffff5),
      endColor: Color(0xffd6fde7)),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          /*  BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),*/
        ],
        //color:Color(0xff0129afa),
        color: Colors.white,

        borderRadius: BorderRadius.circular(8.0),
      ),
      width: 40.w,
      //color: Colors.red,
      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.concave,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: Column(
          children: [
            Container(
              width: 40.w,
              height: 13.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                gradient: LinearGradient(colors: [
                  choice.startColor,
                  choice.endColor,
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: choice.endColor,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Padding(
                padding:  EdgeInsets.all(2.w),
                child: Container(
                  child: Image.asset(
                    choice.image, color: Colors.blueGrey,
                    //'assets/images/upcominng lectures.png',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
height: 4.5.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8)),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.white,
                  ),
                ],
              ),
              child: Text(
                choice.name,
                //'12:30 PM',
                style: TextStyle(
                  color: Colors.blueGrey.withOpacity(0.6),
                  fontFamily: 'Oxygen',
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RandomColorModel {
  Random random = Random();

  Color getColor() {
    return Color.fromARGB(
      random.nextInt(200),
      random.nextInt(300),
      random.nextInt(400),
      random.nextInt(200),
    );
  }
}

class Choice2 {
  const Choice2({
    required this.image,
    required this.name,
    required this.rewardrate,
  });

  final String image;
  final String name;
  final String rewardrate;
}

const List<Choice2> choices2 = const <Choice2>[
  const Choice2(
      image: ('assets/images/amazon.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice2(
      image: ('assets/images/ajio.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice2(
      image: ('assets/images/mama.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice2(
      image: ('assets/images/amazon.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
];

class SelectCard2 extends StatelessWidget {
  const SelectCard2({Key? key, required this.choice2}) : super(key: key);

  final Choice2 choice2;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 0),
      child: Column(
        children: [
          Container(
            width: 35.w,
            height: 14.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  offset: Offset(-6.0, -6.0),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  shape: NeumorphicShape.concave,
                  depth: 2,
                  intensity: 10,
                  shadowLightColor: Colors.white,
                  lightSource: LightSource.topLeft,
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: Container(
                      height: 4.h,
                      // alignment: Alignment.topCenter,
                      child: Image.asset(
                        choice2.image,
                        //'assets/images/upcominng lectures.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 3.h,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffff9c08),
                        ),
                      ],
                    ),
                    // alignment: Alignment.center,
                    child: Text(
                      choice2.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Mukta',
                          fontSize: 8.sp,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 1.5.h, 0, 0),
                    child: Text(
                      choice2.rewardrate,
                      //'12:30 PM',
                      style: TextStyle(
                        color: Color(0xff48a3a8),
                        fontFamily: 'Oxygen',
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Choice3 {
  const Choice3({
    required this.image,
    required this.imagejiva,
    required this.brandname,
    required this.brandnamejiva,
    required this.brandnamedetails,
    required this.grabdeal,
  });

  final String image;
  final String imagejiva;
  final String brandname;
  final String brandnamejiva;
  final String brandnamedetails;
  final String grabdeal;
}

const List<Choice3> choices3 = const <Choice3>[
  const Choice3(
      image: ('assets/images/jiva.png'),
      imagejiva: ('assets/images/jiva.png'),
      brandname: ("Brand:"),
      brandnamejiva: ("Jiva Ayurveda"),
      brandnamedetails:
          ("Buy 2 jiva Ayurveda Hand\nSanitizer,Pack of 5 worth\nRs 600 at rs 350"),
      grabdeal: ("GRAB DEAL")),
  const Choice3(
      image: ('assets/images/jiva.png'),
      imagejiva: ('assets/images/jiva.png'),
      brandname: ("Brand:"),
      brandnamejiva: ("Jiva Ayurveda"),
      brandnamedetails:
          ("Buy 2 jiva Ayurveda Hand\nSanitizer,Pack of 5 worth\nRs 600 at rs 350"),
      grabdeal: ("GRAB DEAL")),
  const Choice3(
      image: ('assets/images/jiva.png'),
      imagejiva: ('assets/images/jiva.png'),
      brandname: ("Brand:"),
      brandnamejiva: ("Jiva Ayurveda"),
      brandnamedetails:
          ("Buy 2 jiva Ayurveda Hand\nSanitizer,Pack of 5 worth\nRs 600 at rs 350"),
      grabdeal: ("GRAB DEAL")),
  const Choice3(
      image: ('assets/images/jiva.png'),
      imagejiva: ('assets/images/jiva.png'),
      brandname: ("Brand:"),
      brandnamejiva: ("Jiva Ayurveda"),
      brandnamedetails:
          ("Buy 2 jiva Ayurveda Hand\nSanitizer,Pack of 5 worth\nRs 600 at rs 350"),
      grabdeal: ("GRAB DEAL")),
];

class SelectCard3 extends StatelessWidget {
  const SelectCard3({Key? key, required this.choice3}) : super(key: key);

  final Choice3 choice3;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 1.h),
      //width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
        ],
      ),
      //height: 70,
      width: 40.w,
      height: 35.h,
      //color: Colors.red,
      child: Neumorphic(
        style:  NeumorphicStyle(
            boxShape:
            NeumorphicBoxShape.roundRect(BorderRadius.circular(7.w)),
            shape: NeumorphicShape.concave,
            depth: NeumorphicTheme.embossDepth(context),
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Color(0xffECF0F3)),
        child: Column(
          children: [
            Container(
              //color: Colors.red,
              width: 40.w,
              height: 27.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(
                    color: Color(0xffECF0F3),
                  ),
                ],
              ),

              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: Container(
                      height: 5.h,
                      // alignment: Alignment.topCenter,
                      child: Image.asset(
                        choice3.image,
                        //'assets/images/upcominng lectures.png',
                      ),
                    ),
                  ),
                  Container(
                    height: 5.h,
                    // alignment: Alignment.topCenter,
                    child: Image.asset(
                      choice3.imagejiva,

                      //'assets/images/upcominng lectures.png',
                    ),
                  ),
                  Container(
                    width: 40.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2.w),
                      /* boxShadow: [
                         new BoxShadow(color: Color(0xffff9c08),),
                       ],*/
                    ),
                    // alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(

                          child: Text(
                            choice3.brandname,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(

                          child: Text(
                            choice3.brandnamejiva,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Oxygen',
                              fontSize: 9.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(

                    alignment: Alignment.center,
                    child: Text(
                      choice3.brandnamedetails,
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Oxygen',
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Stack(children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 35.w,
                            height: 3.h,
                            alignment: Alignment.center,
                            // margin: EdgeInsets.fromLTRB(0, 10, 0, 2),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color(0xffff9c08), width: 1),
                              borderRadius: BorderRadius.circular(4.w),
                            ),
                            child: Text(
                              choice3.grabdeal,
                              //'12:30 PM',
                              style: TextStyle(
                                color: Color(0xffff9c08),
                                fontFamily: 'Oxygen',
                                fontSize: 6.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice4 {
  const Choice4({
    required this.image,
    required this.name,
    required this.rewardrate,
  });

  final String image;
  final String name;
  final String rewardrate;
}

const List<Choice4> choices4 = const <Choice4>[
  const Choice4(
      image: ('assets/images/itc.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice4(
      image: ('assets/images/caffe.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice4(
      image: ('assets/images/lakme.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
  const Choice4(
      image: ('assets/images/amazon.png'),
      name: ("EARN UPTO 4.5% REWARD.."),
      rewardrate: ("Rewards Rates & Terms")),
];

class SelectCard4 extends StatelessWidget {
  const SelectCard4({Key? key, required this.choice4}) : super(key: key);

  final Choice4 choice4;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.w, 1.h, 2.w, 1.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      //height: 70,
      //width: 120,
      //color: Colors.red,
      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.concave,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: Column(
          children: [
            Container(
              //color: Colors.red,
              width: 35.w,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(
                    color: Colors.white,
                  ),
                ],
              ),

              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.all(2.w),
                    child: Container(
                      height: 7.h,
                      // alignment: Alignment.topCenter,
                      child: Image.asset(
                        choice4.image,
                        //'assets/images/upcominng lectures.png',
                      ),
                    ),
                  ),
                  Container(

                    height: 3.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        new BoxShadow(
                          color: Color(0xffff9c08),
                        ),
                      ],
                    ),
                    // alignment: Alignment.center,
                    child: Text(
                      choice4.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 7.9.sp,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 2.h, 0, 0),
                    child: Text(
                      choice4.rewardrate,
                      //'12:30 PM',
                      style: TextStyle(
                        color: Color(0xff48a3a8),
                        fontFamily: 'Oxygen',
                        fontSize: 7.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
