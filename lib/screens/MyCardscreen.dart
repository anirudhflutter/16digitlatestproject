import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';

import 'Famcard%20screen/AddMoneyscreen.dart';
import 'Profile%20screen/Profilescreen.dart';
import 'package:sizer/sizer.dart';

class MyCardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyCardScreenState();
  }
}

class MyCardScreenState extends State<MyCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  color: Color(0xfff2f2f2),
      //backgroundColor: Color(0xfff2f2f2),
      backgroundColor: Color(0xff0ecf0f2),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              // The containers in the background
              Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                    type: PageTransitionType.fade,
                                    child: ProfileScreen(),
                                    duration: Duration(milliseconds: 800),
                                    reverseDuration:
                                    Duration(milliseconds: 800)),
                              );
                            },
                            child: Container(
                                margin: EdgeInsets.fromLTRB(7.w, 5.h, 3.w, 0),
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
                                child: Hero(
                                  tag: 'profile',
                                  child: Image.asset(
                                    'assets/images/profile.png',
                                    height: 5.h,
                                  ),
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5.h, 3.w, 0),
                            alignment: Alignment.centerLeft,
                            child: Text('Hi Kabir',
                                style: TextStyle(
                                    color: Colors.blue[800],
                                    fontFamily: 'Mukta',
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(7.w, 5.h, 3.w, 0),
                        //color: Colors.red,
                        width: 25.w,
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
                        child: Row(
                          children: [
                            Neumorphic(
                              style: NeumorphicStyle(
                                  depth: NeumorphicTheme.embossDepth(context),
                                  boxShape: NeumorphicBoxShape.roundRect(
                                      BorderRadius.circular(20)),
                                  intensity: 10.0,
                                  lightSource: LightSource.topLeft,
                                  color: Colors.white),
                              child: Container(
                                child: Padding(
                                    padding:  EdgeInsets.all(1.w),
                                    child: Icon(Icons.add)),
                              ),
                            ),
                            Container(
                              child: Padding(
                                padding:  EdgeInsets.all(0.5.w),
                                child: Text(
                                  "Add card",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Oxygen',
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(7.w, 2.h, 7.w, 0),
                    alignment: Alignment.topLeft,
                    child: Text('My Cards',
                        style: TextStyle(
                            color: Colors.blue[900],
                            fontFamily: 'Oxygen',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700)),
                  ),
                  //my cards container
                  Neumorphic(
                    margin: EdgeInsets.fromLTRB(7.w, 2.h, 7.w, 0),
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.flat,
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: Colors.white),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black, width: 0),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(-1, -1),
                                color: Colors.white),
                          ],
                          color: Colors.white),
                      //height: 220,
                      //alignment: Alignment.topLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: Addmoneyscreen(),
                                        duration: Duration(milliseconds: 800),
                                        reverseDuration:
                                        Duration(milliseconds: 800)),
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                  //height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          //color: Colors.white
                                          color: Color(0xff0ebeff1)),
                                    ],
                                    color: Color(0xff028529c),
                                  ),

                                  child: Padding(
                                    padding:  EdgeInsets.all(1.w),
                                    child: Row(
                                      children: [
                                        Neumorphic(
                                          style: NeumorphicStyle(
                                              depth:
                                                  NeumorphicTheme.embossDepth(
                                                      context),
                                              boxShape:
                                                  NeumorphicBoxShape.roundRect(
                                                      BorderRadius.circular(
                                                          20)),
                                              intensity: 10.0,
                                              lightSource: LightSource.topLeft,
                                              color: Colors.white),
                                          child: Container(
                                            child: Padding(
                                                padding:
                                                     EdgeInsets.all(0.5.w),
                                                child: Icon(Icons.add,
                                                    color: Colors.blue[400],
                                                    size: 11.sp)),
                                          ),
                                        ),
                                        Container(
                                          margin:
                                              EdgeInsets.fromLTRB(1.w, 0, 1.w, 0),
                                          child: Hero(
                                            tag: 'Add Money',
                                            child: Text(
                                              "Add Money",
                                              style: TextStyle(
                                                color: Colors.white,
                                                decoration: TextDecoration.none,
                                                fontFamily: 'Oxygen',
                                                fontSize: 9.sp,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(7.w, 2.h, 7.w, 0),
                                child: Column(
                                  children: [
                                    Container(
                                      child: Text(
                                        "Wallet Amount",
                                        style: TextStyle(
                                          color: Color(0xff193565),
                                          fontFamily: 'Oxygen',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                      child: Text(
                                        "₹ 546",
                                        style: TextStyle(
                                          color: Color(0xff193565),
                                          fontFamily: 'Oxygen',
                                          fontSize: 15.sp,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                                  width: 25.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(-1, -1),
                                            color: Colors.white),
                                      ],
                                      color: Color(0xff097a6c3)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Total Due",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Oxygen',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                        child: Text(
                                          "₹40,0000",
                                          style: TextStyle(
                                            color: Color(0xff193565),
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                  width: 25.w,
                                  height: 15.h,
                                  decoration: BoxDecoration(
                                     shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                            spreadRadius: 3,
                                            blurRadius: 10,
                                            offset: Offset(-1, -1),
                                            color: Colors.white),
                                      ],
                                      color: Color(0xff097a6c3)),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        child: Text(
                                          "Min Due",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Oxygen',
                                            fontSize: 11.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(0, 1.h, 0, 0),
                                        child: Text(
                                          "₹10,0000",
                                          style: TextStyle(
                                            color: Color(0xff193565),
                                            fontFamily: 'Mukta',
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),

                  //Mycard listing
                  Neumorphic(
                    margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                    style: NeumorphicStyle(
                      depth: NeumorphicTheme.embossDepth(context),
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                      intensity: 10.0,
                      lightSource: LightSource.topLeft,
                      // color: Colors.transparent),
                      // color: Color(0xff0ebeff1),
                      color: Color(0xff0eef2f4),

                      // color: Colors.transparent
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      children: List.generate(choices.length, (index) {
                        return Center(
                          child: SelectCard(choice: choices[index]),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//My card listing.
class Choice {
  const Choice({
    required this.card_chip,
    required this.cardnumber,
    required this.cardnum4,
    required this.cardvalidtill,
    required this.icon,
    required this.cardexpirydate,
    required this.personname,
    required this.cardtypeimage,
    required this.totaldue,
    required this.mindue,
    required this.duedate,
    required this.totaldueamount,
    required this.mindueamount,
    required this.duedateamount,
    required this.paynow,
    required this.manage,
  });

  final String card_chip;
  final String cardnumber;
  final String cardnum4;
  final String cardvalidtill;
  final IconData icon;
  final String cardexpirydate;
  final String personname;
  final String cardtypeimage;

  final String totaldue;
  final String mindue;
  final String duedate;
  final String totaldueamount;
  final String mindueamount;
  final String duedateamount;
  final String paynow;
  final String manage;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    card_chip: ('assets/images/card_chip.png'),
    cardnumber: ('7656         5432        3334        2234 '),
    cardnum4: ('8974'),
    cardvalidtill: ("VALID\nTILL"),
    icon: Icons.arrow_right,
    cardexpirydate: '12/23',
    personname: 'KARUNNYA',
    cardtypeimage: "assets/images/master-card.png",
    totaldue: ('Total Due'),
    mindue: ('Min Due'),
    duedate: ('Due Date'),
    totaldueamount: ('₹ 40,000'),
    mindueamount: ('₹ 2,500'),
    duedateamount: ('May13,21'),
    paynow: ('Pay Now'),
    manage: ('Manage'),
  ),
  const Choice(
    card_chip: ('assets/images/card_chip.png'),
    cardnumber: ('7656         5432        3334        2234 '),
    cardnum4: ('8974'),
    cardvalidtill: ("VALID\nTILL"),
    icon: Icons.arrow_right,
    cardexpirydate: '12/23',
    personname: 'KARUNNYA',
    cardtypeimage: "assets/images/master-card.png",
    totaldue: ('Total Due'),
    mindue: ('Min Due'),
    duedate: ('Due Date'),
    totaldueamount: ('₹ 40,000'),
    mindueamount: ('₹ 2,500'),
    duedateamount: ('May13,21'),
    paynow: ('Pay Now'),
    manage: ('Manage'),
  ),
  const Choice(
    card_chip: ('assets/images/card_chip.png'),
    cardnumber: ('7656         5432        3334        2234 '),
    cardnum4: ('8974'),
    cardvalidtill: ("VALID\nTILL"),
    icon: Icons.arrow_right,
    cardexpirydate: '12/23',
    personname: 'KARUNNYA',
    cardtypeimage: "assets/images/master-card.png",
    totaldue: ('Total Due'),
    mindue: ('Min Due'),
    duedate: ('Due Date'),
    totaldueamount: ('₹ 40,000'),
    mindueamount: ('₹ 2,500'),
    duedateamount: ('May13,21'),
    paynow: ('Pay Now'),
    manage: ('Manage'),
  ),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 1.w,vertical: 1.h),
          width: double.infinity,
          height: 25.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topLeft,
                //colors: [Colors.green, Colors.blue]
                colors: <Color>[
                  Color(0xff471d21),
                  Color(0xff1b3045),
                ],
              )),
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.fromLTRB(4.w, 1.5.h, 0, 0),
                              alignment: Alignment.topLeft,
                              child: Image.asset(
                                choice.card_chip,
                                width: 10.w,
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.symmetric(horizontal: 5.w,vertical: 1.5.h),
                              child: Text(choice.cardnumber,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Chaparral',
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.w100,
                                  )),
                            ),
                            Row(
                                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.fromLTRB(7.w, 2.h, 0, 0),
                                    child: Text(choice.cardnum4,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Chaparral',
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.fromLTRB(35.w, 0, 0, 0),
                                    child: Text(choice.cardvalidtill,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontFamily: 'Lucidi Sans Unicode',
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                  Container(
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.fromLTRB(1.w, 0, 0, 0),
                                      child: Icon(
                                        choice.icon,
                                        color: Colors.grey,
                                      )),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.fromLTRB(0, 0, 7.w, 0),
                                    child: Text(choice.cardexpirydate,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Chaparral',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                  ),
                                ]),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                    child: Text(choice.personname,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mukta',
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w600,
                                        )),
                                  ),
                                  Container(
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                    child: Image.asset(choice.cardtypeimage,
                                         height: 10.w),
                                  )
                                ]),
                          ]),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,

                  child: Text(choice.totaldue,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(choice.mindue,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.fromLTRB(0, 0, 5, 0),
                  child: Text(choice.duedate,
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.w, 0.5.h, 5.w, 0),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  //margin:EdgeInsets.fromLTRB(30, 0, 0, 0),
                  child: Text(choice.totaldueamount,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  //margin:EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(choice.mindueamount,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  alignment: Alignment.topRight,
                  // margin:EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Text(choice.duedateamount,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontFamily: 'Mukta',
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 2.h),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Neumorphic(
                  style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                      shape: NeumorphicShape.flat,
                      depth: 4,
                      lightSource: LightSource.bottom,
                      color: Colors.white
                      //color: Colors.transparent
                      ),
                  child: Container(
                    width: 30.w,
                    height: 5.h,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff0405ac9),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3,
                              blurRadius: 4,
                              offset: Offset(-1, -1),
                              color: Colors.white)
                        ]),
                    child: Text(choice.paynow,
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Mukta',
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                ),
                Container(
                  width: 30.w,
                  height: 5.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.white,
                        offset: new Offset(-1, -1),
                      ),
                    ],
                  ),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(8)),
                        shape: NeumorphicShape.flat,
                        depth: 4,
                        lightSource: LightSource.bottom,
                        color: Colors.white
                        //color: Colors.transparent

                        ),
                    child: Container(
                      width: 30.w,
                      height: 5.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 3,
                                blurRadius: 4,
                                offset: Offset(-1, -1),
                                color: Colors.white)
                          ]),
                      child: Text(choice.manage,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Mukta',
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          )),
                    ),
                  ),
                ),
              ]),
        ),
      ],
    );
  }
}
