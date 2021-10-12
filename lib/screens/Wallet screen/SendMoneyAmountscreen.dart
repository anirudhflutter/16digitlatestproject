import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Track%20screen/avatarAndText.dart';
import '../Wallet%20screen/PayAmountscreen.dart';
import 'package:sizer/sizer.dart';

class SendMoneyAmountscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SendMoneyAmountscreenState();
  }
}

class SendMoneyAmountscreenState extends State<SendMoneyAmountscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                              margin: EdgeInsets.fromLTRB(7.w, 5.h, 7.w, 0),
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
                          SizedBox(width: 0),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          margin: EdgeInsets.fromLTRB(20.w, 0, 4.w, 0),
                          //height: 45,
                          //color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              CircleAvatar(
                                radius: 7.w,
                                backgroundImage:
                                    AssetImage('assets/images/profile.png'),
                              ),
                              SizedBox(width: 3.w),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text("Kabir Singh",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Mukta',
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w400,
                                        )),
                                    Row(
                                      children: [
                                        Hero(
                                            tag: 'bhim',
                                            child: Image.asset(
                                              "assets/images/upi_fevicon.png",
                                              width: 5.w,
                                              height: 3.h,
                                            )),
                                        Container(
                                          child:
                                              Text("Kabirsingh0022@okicici.com",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Mukta',
                                                    fontSize: 10.sp,
                                                    fontWeight: FontWeight.w500,
                                                  )),
                                        ),
                                      ],
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
                    color: Color(0xffecf0f2)),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 2.w),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.72,
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
                              // color: Colors.white
                              color: Color(0xffecf0f2)),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 4.h, right: 4.w, left: 4.w),
                                //width: 270,
                                width: double.infinity,
                                height: 8.h,
                                padding: EdgeInsets.all(0.0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    // color: Color(0xff0f2f2f2),
                                    //color:Colors.white
                                    color: Color(0xffecf0f2)),

                                child: Neumorphic(
                                  style: NeumorphicStyle(
                                      depth:
                                          NeumorphicTheme.embossDepth(context),
                                      boxShape: NeumorphicBoxShape.roundRect(
                                          BorderRadius.circular(40)),
                                      intensity: 10.0,
                                      lightSource: LightSource.topLeft,
                                      // color: Colors.white
                                      color: Color(0xffecf0f2)),
                                  child: Container(
                                    margin: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                                    color: Colors.transparent,
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 0.0, right: 4.w),
                                          child: Text('₹',
                                              style: TextStyle(
                                                color: Colors.blueGrey[300],
                                                fontFamily: 'Mukta',
                                                fontSize: 24.sp,
                                                fontWeight: FontWeight.w500,
                                              )),
                                        ),
                                        /*Text('Enter Amount',style: TextStyle(color: Colors.grey,fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold,fontSize: 14)),*/
                                        Container(
                                          color: Colors.transparent,
                                          width: 40.w,
                                          child: TextFormField(
                                            cursorColor: Colors.blueGrey,
                                            keyboardType: TextInputType.number,
                                            style: TextStyle(
                                                color: Colors.blueGrey),
                                            decoration: InputDecoration(
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.transparent),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.transparent),
                                              ),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Colors.transparent),
                                              ),
                                              contentPadding: EdgeInsets.only(
                                                  left: 0,
                                                  bottom: 0,
                                                  top: 0,
                                                  right: 0),
                                              hintText: "Enter Amount",
                                              hintStyle: TextStyle(
                                                fontFamily: 'Mukta',
                                                fontSize: 18.sp,
                                                color: Colors.blueGrey[300],
                                                fontWeight: FontWeight.w500,
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
                                margin: EdgeInsets.fromLTRB(8.w, 1.h, 3.w, 0),
                                alignment: Alignment.topLeft,
                                child: Text('Rupees One Hundred Only',
                                    style: TextStyle(
                                        color: Colors.grey[400],
                                        fontFamily: 'Mukta',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w500)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(8.w, 3.h, 3.w, 0),
                                alignment: Alignment.center,
                                child: Text('Put a label to your expense',
                                    style: TextStyle(
                                        color: Colors.blue[400],
                                        fontFamily: 'Mukta',
                                        fontSize: 10.sp,
                                        fontWeight: FontWeight.w400)),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(7.w, 0, 7.w, 0),
                                child: Divider(
                                  color: Colors.blue[400],
                                ),
                              ),
                              Container(
                                height: 10.h,
                                margin:
                                    EdgeInsets.fromLTRB(1.w, 0.5.h, 1.w, 0.2.h),
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
                              Expanded(
                                child: Container(
                                  height: 5.h,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text('From:',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Mukta',
                                              fontSize: 13.sp,
                                              fontWeight: FontWeight.w500)),
                                      Container(
                                          child: Image.asset(
                                        "assets/images/hdfc.png",
                                        width: 10.w,
                                        height: 3.h,
                                      )),
                                      Text('HDFC Bank a/c xx 22222',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: 'Mukta',
                                              fontSize: 11.sp,
                                              fontWeight: FontWeight.w500)),
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.transparent,
                                              width: 0.5),
                                          borderRadius:
                                              BorderRadius.circular(200),
                                          boxShadow: [
                                            new BoxShadow(
                                                color: Colors.white30,
                                                offset: new Offset(4.0, 4.0)),
                                          ],
                                        ),
                                        // margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                                        //alignment: Alignment.centerLeft,
                                        child: Icon(
                                          Icons.keyboard_arrow_down_outlined,
                                        ),
                                        width: 5.w,
                                        height: 3.h,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        type: PageTransitionType.fade,
                                        child: PayAmountscreen(),
                                        duration: Duration(milliseconds: 800),
                                        reverseDuration:
                                            Duration(milliseconds: 800)),
                                  );
                                },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 4.w, vertical: 3.h),
                                      height: 6.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[800],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      //alignment: Alignment.center,
                                      child: Text(
                                        'Pay ₹ 100 ',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Mukta',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Choice {
  const Choice({
    required this.image,
    required this.name,
    required this.background,
  });

  final String image;
  final String name;
  final Color background;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      image: ('assets/images/cab.png'),
      name: ("Cab"),
      background: Color(0xff11a581)),
  const Choice(
      image: ('assets/images/cacke.png'),
      name: ("Food"),
      background: Color(0xff4551b5)),
  const Choice(
      image: ('assets/images/cap.png'),
      name: ("Entertainment"),
      background: Color(0xff00acee)),
  const Choice(
      image: ('assets/images/shopping.png'),
      name: ("shopping"),
      background: Color(0xfffc783f)),
  const Choice(
      image: ('assets/images/tax.png'),
      name: ("Bills"),
      background: Color(0xff193565)),
  const Choice(
      image: ('assets/images/dance.png'),
      name: ("Fun"),
      background: Color(0xff97a6c3)),
  const Choice(
      image: ('assets/images/bag.png'),
      name: ("Work"),
      background: Color(0xffc8267c)),
  const Choice(
      image: ('assets/images/more.png'),
      name: ("More"),
      background: Color(0xff193565)),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(2.w, 0.5.h, 2.w, 0.5.h),
      //width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(
              //color: Colors.white,
              color: Color(0xffecf0f2)),
        ],
      ),
      //height: 70,
      width: 20.w,
      //color: Colors.red,
      child: Column(
        children: [
          Container(
            //color: Colors.red,
            width: 15.w,
            height: 5.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                //color: RandomColorModel().getColor(),
                color: choice.background

                /*boxShadow: [
                new BoxShadow(color: Colors.purpleAccent,),
              ],*/
                ),

            child: Padding(
              padding: EdgeInsets.all(2.w),
              child: Container(
                child: Image.asset(
                  choice.image, width: 10.w, height: 2.h,
                  //'assets/images/upcominng lectures.png',
                ),
              ),
            ),
          ),
          Container(
            width: 10.h,
            //width: 70,
            //height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(color: Color(0xffecf0f2)),
              ],
            ),

            child: Padding(
              padding: EdgeInsets.all(1.w),
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  choice.name,
                  //'12:30 PM',
                  style: TextStyle(
                      color: Colors.blue,
                      fontFamily: 'Mukta',
                      fontSize: 7.sp,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
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
