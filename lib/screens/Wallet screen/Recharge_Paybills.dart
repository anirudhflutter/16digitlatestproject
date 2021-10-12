import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../Wallet%20screen/WalletScreen.dart';
import 'package:sizer/sizer.dart';

class RechargePaybillsscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RechargePaybillsscreenState();
  }
}

enum FavoriteMethod { flutter, kotlin, swift, reactNative }

class RechargePaybillsscreenState extends State<RechargePaybillsscreen> {
  FavoriteMethod _method = FavoriteMethod.flutter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: SingleChildScrollView(
            child: Stack(
              fit: StackFit.loose,
              children: <Widget>[
                // The containers in the background
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      height: 100.h,
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
                                ),
                              ),
                              SizedBox(width: 0),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.all(1.w),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Text('Recharge & Pay Bills',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Mukta',
                                      fontSize: 13.sp,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Hero(
                  tag: 'recharge',
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 15.h, bottom: 5.h),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: Colors.white,
                      ),
                      child: Column(children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(5.w, 7.h, 5.w, 0),
                          //height: 500,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff2f2f2),
                            // color: Colors.white
                          ),

                          child: Neumorphic(
                            style: NeumorphicStyle(
                                depth: NeumorphicTheme.embossDepth(context),
                                boxShape: NeumorphicBoxShape.roundRect(
                                    BorderRadius.circular(20)),
                                intensity: 10.0,
                                lightSource: LightSource.topLeft,
                                color: Colors.white
                                /*  color: const Color.fromRGBO(
                                        236,
                                       240,
                                       242,
                                        255
                                    ),*/
                                ),
                            /*       style: NeumorphicStyle(
                                    shape: NeumorphicShape.flat,
                                    depth: 8,
                                    lightSource: LightSource.topLeft,
                                    color: Colors.white

                                ),*/
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                  child: Text('Utilities',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700)),
                                ),

                                //Utilities
                                Container(
                                  height: 40.h,
                                  margin: EdgeInsets.fromLTRB(0, 1.h, 3.w, 0),
                                  width: double.infinity,
                                  child: GridView.count(
                                      crossAxisCount: 3,
                                      childAspectRatio: (4 / 3),
                                      shrinkWrap: true,
                                      //crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 10,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(choices.length,
                                          (index) {
                                        return Center(
                                          child: SelectCard(
                                              choice: choices[index]),
                                        );
                                      })),
                                ),

                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                                  child: Text('Loan & Payments',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Container(
                                  height: 130,
                                  width: double.infinity,
                                  child: GridView.count(
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      childAspectRatio: (4 / 3),
                                      //crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 10,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(choices2.length,
                                          (index) {
                                        return Center(
                                          child: SelectCard2(
                                              choice2: choices2[index]),
                                        );
                                      })),
                                ),
                                Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                                  child: Text('Recharge & Bills',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Container(
                                  height: 30.h,
                                  width: double.infinity,
                                  child: GridView.count(
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      childAspectRatio: (4 / 3),
                                      //crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 10,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(choices3.length,
                                          (index) {
                                        return Center(
                                          child: SelectCard3(
                                              choice3: choices3[index]),
                                        );
                                      })),
                                ),
                                Container(
                                  // height: 140,
                                  width: double.infinity,
                                  // alignment: Alignment.topLeft,
                                  margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                                  child: Text('Insurance',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700)),
                                ),

                                Container(
                                  height: 15.h,
                                  width: double.infinity,
                                  child: GridView.count(
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      childAspectRatio: (4 / 3),
                                      //crossAxisSpacing: 0.0,
                                      mainAxisSpacing: 10,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(choice4.length,
                                          (index) {
                                        return Center(
                                          child: SelectCard4(
                                              choice4: choice4[index]),
                                        );
                                      })),
                                ),
                                Container(
                                  width: double.infinity,
                                  // alignment: Alignment.topLeft,
                                  margin: EdgeInsets.fromLTRB(5.w, 10, 5.w, 0),
                                  child: Text('Municipality',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'Mukta',
                                          fontSize: 13.sp,
                                          fontWeight: FontWeight.w700)),
                                ),
                                Container(
                                  height: 20.h,
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 1.h),
                                  width: double.infinity,
                                  child: GridView.count(
                                      crossAxisCount: 3,
                                      shrinkWrap: true,
                                      childAspectRatio: (4 / 3),
                                      //crossAxisSpacing: 0.0,
                                      //mainAxisSpacing: 10,
                                      physics: NeverScrollableScrollPhysics(),
                                      children: List.generate(choices5.length,
                                          (index) {
                                        return Center(
                                          child: SelectCard5(
                                              choice5: choices5[index]),
                                        );
                                      })),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Choice {
  const Choice({required this.title, required this.image});

  final String title;
  final String image;
}

const List<Choice> choices = const <Choice>[
  const Choice(
    title: 'Postpaid/Prepaid',
    image: ('assets/images/mobile.png'),
  ),
  const Choice(
    title: 'Metro',
    image: ('assets/images/matro.png'),
  ),
  const Choice(
    title: 'Water',
    image: ('assets/images/water.png'),
  ),
  const Choice(
    title: 'Electricity',
    image: ('assets/images/electri.png'),
  ),
  const Choice(
    title: 'Book a Cylinder',
    image: ('assets/images/ges.png'),
  ),
  const Choice(
    title: 'Broadband\nLandline',
    image: ('assets/images/broadband.png'),
  ),
  const Choice(
    title: 'Education Fee',
    image: ('assets/images/fees.png'),
  ),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      //margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 25.w,
      height: 20.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),
        ],
        //color:Color(0xff0129afa),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: (Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Image.asset(
                choice.image,
                width: 10.w,
              ),
            ),
            Container(
              child: Text(
                choice.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

// for Loan and Payments

class Choice2 {
  const Choice2({required this.title, required this.image});

  final String title;
  final String image;
}

const List<Choice2> choices2 = const <Choice2>[
  const Choice2(
    title: 'Pay Loan',
    image: ('assets/images/pay-loan.png'),
  ),
  const Choice2(
    title: 'Credit Card\nPayment',
    image: ('assets/images/card.png'),
  ),
];

class SelectCard2 extends StatelessWidget {
  const SelectCard2({Key? key, required this.choice2}) : super(key: key);
  final Choice2 choice2;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 25.w,
      height: 20.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),
        ],
        //color:Color(0xff0129afa),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: (Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Image.asset(
                choice2.image,
                width: 10.w,
              ),
            ),
            Container(
              child: Text(
                choice2.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

// For Recharge and bills
class Choice3 {
  const Choice3({required this.title, required this.image});

  final String title;
  final String image;
}

const List<Choice3> choices3 = const <Choice3>[
  const Choice3(
    title: 'DTH',
    image: ('assets/images/dish.png'),
  ),
  const Choice3(
    title: 'Fastag',
    image: ('assets/images/fastag.png'),
  ),
  const Choice3(
    title: 'Housing Society',
    image: ('assets/images/housing.png'),
  ),
  const Choice3(
    title: 'Hospital',
    image: ('assets/images/hospt.png'),
  ),
  const Choice3(
    title: 'Cable TV',
    image: ('assets/images/tv.png'),
  ),
  const Choice3(
    title: 'Clubs &\nAssociation',
    image: ('assets/images/bar.png'),
  ),
];

class SelectCard3 extends StatelessWidget {
  const SelectCard3({Key? key, required this.choice3}) : super(key: key);
  final Choice3 choice3;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Container(
      //alignment: Alignment.center,

      // margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 25.w,
      height: 20.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),
        ],
        //color:Color(0xff0129afa),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: (Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Image.asset(
                choice3.image,
                width: 10.w,
              ),
            ),
            Container(
              child: Text(
                choice3.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//For insurance
class Choice4 {
  const Choice4({required this.title, required this.image});

  final String title;
  final String image;
}

const List<Choice4> choice4 = const <Choice4>[
  const Choice4(
    title: 'Insurnce\nLIC Preminium',
    image: ('assets/images/umbrella.png'),
  ),
];

class SelectCard4 extends StatelessWidget {
  const SelectCard4({Key? key, required this.choice4}) : super(key: key);
  final Choice4 choice4;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Container(
      //alignment: Alignment.center,

      // margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 25.w,
      height: 20.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),
        ],
        //color:Color(0xff0129afa),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: (Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Image.asset(
                choice4.image,
                width: 10.w,
              ),
            ),
            Container(
              child: Text(
                choice4.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}

//for municipalty
class Choice5 {
  const Choice5({required this.title, required this.image});

  final String title;
  final String image;
}

const List<Choice5> choices5 = const <Choice5>[
  const Choice5(
    title: 'Taxes & Services',
    image: ('assets/images/taxpay.png'),
  ),
];

class SelectCard5 extends StatelessWidget {
  const SelectCard5({Key? key, required this.choice5}) : super(key: key);
  final Choice5 choice5;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.headline4;
    return Container(
      //alignment: Alignment.center,

      // margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      width: 25.w,
      height: 20.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            offset: Offset(-6.0, -6.0),
            blurRadius: 8,
          ),
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: Offset(6.0, 6.0),
            blurRadius: 8.0,
          ),
        ],
        //color:Color(0xff0129afa),
        //color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
      ),

      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 2,
            intensity: 10,
            shadowLightColor: Colors.white,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: (Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
              child: Image.asset(choice5.image, width: 13.w),
            ),
            Container(
              child: Text(
                choice5.title,
                style: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                    fontSize: 7.sp),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
