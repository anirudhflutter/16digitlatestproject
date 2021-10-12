import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class ExpenseRecordScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ExpenseRecordScreenState();
  }
}

class ExpenseRecordScreenState extends State<ExpenseRecordScreen> {
  var date = DateTime.now();

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(
          color: Color(0xffecf0f2),

          //margin:EdgeInsets.only(bottom:20),
          child: Stack(
            children: <Widget>[
          // The containers in the background
          Column(
          children: <Widget>[
            Container(
            alignment: Alignment.topCenter,
            height: MediaQuery
                .of(context)
                .size
                .height * .35,
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
                          child: Icon(
                            Icons.arrow_back_rounded,
                          ),
                          width: 10.w,
                          height: 5.h,
                        )),
                    SizedBox(width: 0),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(2.w),
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text('Expense Record',
                        style: TextStyle(
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 11.sp)),
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
                top: MediaQuery
                    .of(context)
                    .size
                    .height * .15,
                right: 0.0,
                left: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                // color: Colors.white,
                color: Color(0xffecf0f2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: 5.w, right: 5.w, top: 1.h, bottom: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Expenses',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Mukta',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w700,
                            )),
                        Text(
                            '${DateFormat.MMMMd().format(date)} - ${DateFormat
                                .MMMMd().format(date.add(Duration(days: 11)))}',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: 'Mukta',
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w600,
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      alignment: Alignment.center,
                      height: 220,
                      margin: EdgeInsets.only(top: 1.h),
                      width: double.infinity,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(choices.length, (index) {
                          return Center(
                            child: SelectCard(choice: choices[index]),
                          );
                        }),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          left: 5.w, right: 5.w, top: 1.h, bottom: 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          Text('History',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Mukta',
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w700,
                          )),
                      Text('${DateFormat.MMMMd().format(date)} - ${DateFormat
                          .MMMMd().format(date.add(Duration(days: 11)))}',

                        style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'Mukta',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 2.h),
              child: Container(
                height: 55.h,
                width: double.infinity,
                child: GridView.count(
                    crossAxisCount: 3,
                    padding: EdgeInsets.only(top: 2.h),
                    shrinkWrap: true,
                    childAspectRatio: (1),
                    //crossAxisSpacing: 0.0,
                    mainAxisSpacing: 1,
                    physics: NeverScrollableScrollPhysics(),
                    children:
                    List.generate(choices2.length, (index) {
                      return Center(
                        child:
                        SelectCard2(choice2: choices2[index]),
                      );
                    })),
              ),
            ),
            ]),
      ),
    )],
    ),
    ),
    ),
    );
    }
}

class Choice {
  const Choice(
      {required this.month, required this.amount, required this.transaction});

  final String month;
  final String amount;
  final String transaction;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      month: "previous month",
      amount: "₹ 252550",
      transaction: "141 Transaction"),
  const Choice(
      month: "current month",
      amount: "₹ 132550",
      transaction: "141 Transaction"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    var height = MediaQuery
        .of(context)
        .size
        .height;
    return Column(children: [
      Center(
        child: Neumorphic(
          margin: EdgeInsets.fromLTRB(5.w, 1.h, 0, 1.h),
          style: NeumorphicStyle(
            depth: NeumorphicTheme.embossDepth(context),
            boxShape: NeumorphicBoxShape.circle(),
            /*      style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(200)),*/
            intensity: 10.0,
            border: NeumorphicBorder(
              color: Color(0x33000000),

            ),
            shape: NeumorphicShape.flat,
            lightSource: LightSource.topLeft,
            //color: Colors.white
            color: Color(0xffecf0f2),
          ),
          child: Container(
            alignment: Alignment.center,
            height: 21.h,
            width: 50.w,
            //width: 180/0.7,
            // width: 180,

            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 1),
              shape: BoxShape.circle,
              boxShadow: [
                new BoxShadow(
                    color: Colors.transparent, offset: new Offset(-4.0, -2.0)),
              ],
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.2.h),
                  child: Text(
                      choice.month,
                      style: TextStyle(
                        color: Colors.blue[800],
                        fontFamily: 'Mukta',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Text(choice.amount,
                    style: TextStyle(
                      color: Color(0xff97a6c3),
                      fontFamily: 'Mukta',
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w600,
                    )),
                Padding(
                  padding: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Divider(
                    height: 8,
                    thickness: 1,
                    color: Colors.blue[900],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                  child: Text('141 Transaction',
                      style: TextStyle(
                        color: Color(0xff97a6c3),
                        fontFamily: 'Mukta',
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class Choice2 {
  const Choice2({
    required this.image,
    required this.amount,
    required this.name,
  });

  final String image;
  final String amount;
  final String name;
}

const List<Choice2> choices2 = const <Choice2>[
  const Choice2(
      image: ('assets/images/cab.png'), amount: ("₹ 2,522"), name: "Cab"),
  const Choice2(
      image: ('assets/images/cacke.png'), amount: ("₹ 2,522"), name: "Food"),
  const Choice2(
      image: ('assets/images/cap.png'),
      amount: ("₹ 2,522"),
      name: "Entertainment"),
  const Choice2(
      image: ('assets/images/shopping.png'),
      amount: ("₹ 2,522"),
      name: "Shopping"),
  const Choice2(
      image: ('assets/images/rupeesicon.png'), amount: ("₹ 2,522"), name: "Bills"),
  const Choice2(
      image: ('assets/images/dance.png'),
      amount: ("₹ 2,522"),
      name: "Household"),
  const Choice2(
      image: ('assets/images/bag.png'), amount: ("₹ 2,522"), name: "Work"),
  const Choice2(
      image: ('assets/images/more.png'), amount: ("₹ 2,522"), name: "More"),
];

class SelectCard2 extends StatelessWidget {
  const SelectCard2({Key? key, required this.choice2}) : super(key: key);
  final Choice2 choice2;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
      child: Column(
        children: [
          Container(
            height: 11.h,
            width: 20.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
                new BoxShadow(color: Color(0xffe1e2e5)),
              ],
            ),
            child: Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 1.h, 0, 1.h),
                alignment: Alignment.topCenter,
                child: Image.asset(
                  choice2.image, height: 4.h,
                  //'assets/images/upcominng lectures.png',
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                // alignment: const Alignment(1.0, 1.0),
                child: SizedBox(
                  /**/
                  width: 2.w,
                  height: 3.h,
                  child: OverflowBox(
                    minWidth: 0.0,
                    //maxWidth: 50.0,
                    maxWidth: 20.w,
                    minHeight: 0.0,
                    maxHeight: 6.h,
                    child: Card(
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(8)),
                            shape: NeumorphicShape.flat,
                            depth: 4,
                            lightSource: LightSource.bottom,
                            color: Colors.white),
                        child: Padding(
                          padding: EdgeInsets.all(1.w),
                          //padding: const EdgeInsets.fromLTRB(0,2,0,2),
                          child: Text(choice2.amount,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Mukta',
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w500,
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Container(
            child: Text(choice2.name,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Mukta',
                  fontSize: 9.sp,
                  fontWeight: FontWeight.w500,
                )),
          ),
        ],
      ),
    );
  }
}
