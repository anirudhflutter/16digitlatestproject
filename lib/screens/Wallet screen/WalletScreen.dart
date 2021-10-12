import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sixteen_digit_project/screens/widgets/start_button.dart';
import '../Famcard%20screen/AddMoneyscreen.dart';
import '../Wallet%20screen/ExpenseRecordscreen.dart';
import '../Wallet%20screen/PersonalLoanscreen.dart';
import '../Wallet%20screen/SendMoneyscreen.dart';
import 'package:sizer/sizer.dart';

import 'Recharge_Paybills.dart';

class DrawTriangle extends CustomPainter {
  @
  override

  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.height, size.width);
    path.close();
    canvas.drawPath(path, Paint()..color = Colors.white);
  }
  @
  override

  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class WalletScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return WalletScreenState();
  }
}

class WalletScreenState extends State<WalletScreen> {
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
                          ]),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: <Widget>[
                            Container(

                                //margin: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                                margin: EdgeInsets.fromLTRB(7.w, 5.h, 7.w, 0),
                                //color: Colors.red,
                                // width: 100,
                                //height: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.w),
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
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
                              child: Text('Hi Kabir',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10.sp)),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 5.h, 0, 0),
                              child: Text('Wallet Balance',
                                  style: TextStyle(
                                      color: Colors.grey[400],
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 9.sp)),
                            ),
                            Container(
                              child: Text('₹1,000',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 26.sp)),
                            ),
                            Container(
                              //margin: const EdgeInsets.only(top: 0.0),
                              margin: EdgeInsets.fromLTRB(5.w, 5.h, 5.w, 0),
                              alignment: Alignment.topCenter,
                              child: (Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  //crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        InkWell(
                                            child: Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(1.w),
                                              width: 13.w,
                                              height: 5.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff0159de),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: 3,
                                                    blurRadius: 10,
                                                    offset: Offset(-2, -2),
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(
                                                  "assets/images/pocketmoney.png",
                                                  width: 9.w,
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child: Addmoneyscreen(),
                                                    duration: Duration(
                                                        milliseconds: 800),
                                                    reverseDuration: Duration(
                                                        milliseconds: 800)),
                                              );
                                            }),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.all(3.w),
                                            child: Hero(
                                              tag: 'Add Money',
                                              child: Text("Add Money",
                                                  style: TextStyle(
                                                      decoration:
                                                          TextDecoration.none,
                                                      color: Colors.white,
                                                      fontFamily: 'Muli',
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            //fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                            child: Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(1.w),
                                              width: 13.w,
                                              height: 5.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff0159de),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: 3,
                                                    blurRadius: 10,
                                                    offset: Offset(-2, -2),
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(
                                                  "assets/images/upi_fevicon.png",
                                                  width: 8.w,
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child: SendMoneyscreen(),
                                                    duration: Duration(
                                                        milliseconds: 800),
                                                    reverseDuration: Duration(
                                                        milliseconds: 800)),
                                              );
                                            }),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.all(3.w),
                                            child: Hero(
                                              tag: 'send',
                                              child: Text("Send Money",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      decoration:
                                                          TextDecoration.none,
                                                      fontFamily: 'Muli',
                                                      fontSize: 9.sp,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            //fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                            child: Container(
                                              alignment: Alignment.center,
                                              padding: EdgeInsets.all(1.w),
                                              width: 13.w,
                                              height: 5.h,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color(0xff0159de),
                                                boxShadow: [
                                                  BoxShadow(
                                                    spreadRadius: 3,
                                                    blurRadius: 10,
                                                    offset: Offset(-2, -2),
                                                    color: Colors.white,
                                                  ),
                                                ],
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: Image.asset(
                                                  "assets/images/bill-pay.png",
                                                  width: 8.w,
                                                ),
                                              ),
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        RechargePaybillsscreen(),
                                                    duration:
                                                        Duration(seconds: 1),
                                                    reverseDuration:
                                                        Duration(seconds: 1)),
                                              );
                                            }),
                                        Container(
                                          child: Padding(
                                            padding: EdgeInsets.all(3.w),

                                            child: Text("Recharge\n/Pay Bills",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'Muli',
                                                    fontSize: 9.sp,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                            //fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ])),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 50.h,
                    //color: Colors.transparent,
                    //color:Color(0xff0ecf0f2),
                  )
                ],
              ),
              new Container(
                padding: new EdgeInsets.only(
                    top: 46.5.h,
                    /*for curve*/
                    right: 0.0,
                    left: 0.0),
                child: Column(
                  children: <Widget>[
                    Card(
                        margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 7.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4.w),
                                color: Colors.white,
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 1.h),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(2.w),
                                  ),
                                ),
                                width: double.infinity, //Your desire Width
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          child: Text(
                                            'Expenses',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11.sp),
                                          ),
                                        ),
                                        Text(
                                          'This week, 12-15 jun',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.normal,
                                            fontSize: 8.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                        child: Container(
                                          alignment: Alignment.center,
                                          //padding: EdgeInsets.all(2.0),
                                          width: 20.w,
                                          height: 4.h,
                                          //margin: EdgeInsets.fromLTRB(15, 0, 10, 0),

                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(2.w),
                                              // color: Color(0xff002860),
                                              border: Border.all(
                                                  color: Color(0xff002860),
                                                  width: 1),
                                              boxShadow: [
                                                BoxShadow(
                                                    spreadRadius: 2,
                                                    blurRadius: 15,
                                                    offset: Offset(-5, -3),
                                                    color: Colors.white)
                                              ]),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                margin:
                                                    EdgeInsets.only(left: 5.w),
                                                child: Text('Week',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.blue[800],
                                                        fontStyle:
                                                            FontStyle.normal,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 9.sp)),
                                              ),
                                              Icon(
                                                Icons.arrow_drop_down,
                                                color: Colors.blue,
                                              )
                                            ],
                                          ),
                                        ),
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            PageTransition(
                                                child: ExpenseRecordScreen(),
                                                type: PageTransitionType.fade,
                                                curve: Curves.slowMiddle,
                                                duration:
                                                    Duration(milliseconds: 800),
                                                reverseDuration: Duration(
                                                    milliseconds: 800)),
                                          );
                                        }),
                                  ],
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(left: 4.w),
                                  child: Text(
                                    "        65%\nFood & Clothing",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8.sp),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      child: Hero(
                                          tag: 'piechart',
                                          child: Image.asset(
                                            "assets/images/piechart.png",
                                            height: 20.h,
                                          )),
                                    ),
                                    Padding(
                                      padding:
                                      EdgeInsets.only(right: 10.w,bottom: 2.h),
                                      child: Text(
                                        "  12% Bills\n    &debt",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 8.sp),
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "  20%\nOthers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 8.sp),
                                ),
                              ],
                            ),
                          ],
                        )),
                    //credit card micro loans
                    Container(
                      margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 1.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.w),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.w),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0.5.h),
                                    child: Text(
                                      "Credit Cards",
                                      style: TextStyle(
                                          color: Color(0xFFAC2C9E),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 9.sp),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.fromLTRB(5.w, 0, 2.w, 0),
                                    child: Text(
                                      "From 50+ options,choose a\ncard matching your lifestyle\n& needs",
                                      style: TextStyle(
                                          color: Color(0xFFB17EAA),
                                          fontStyle: FontStyle.normal,
                                          height: 1.5,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 7.sp),
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.bottomRight,
                                      margin:
                                          EdgeInsets.fromLTRB(0, 1.h, 2.w, 1.h),
                                      child: Image.asset(
                                          "assets/images/cradit.png",
                                          width: 15.w)),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.w),
                            ),
                            child: InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 40.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4.w),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.fromLTRB(
                                            5.w, 1.h, 5.w, 0.5.h),
                                        child: Text(
                                          "Micro Loan",
                                          style: TextStyle(
                                              color: Color(0xFFAC2C9E),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 9.sp),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin:
                                            EdgeInsets.fromLTRB(5.w, 0, 2.w, 0),
                                        child: Text(
                                          "Insert small ticket loans to\nmeet your immediate cash\n& needs",
                                          style: TextStyle(
                                              color: Color(0xFFB17EAA),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              height: 1.5,
                                              fontSize: 7.sp),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          margin:
                                              EdgeInsets.fromLTRB(0, 5, 20, 10),
                                          child: Image.asset(
                                              "assets/images/piggi.png",
                                              width: 17.w)),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    PageTransition(
                                        child: PersonalLoanscreen(),
                                        type: PageTransitionType.fade,
                                        curve: Curves.slowMiddle,
                                        duration: Duration(milliseconds: 800),
                                        reverseDuration:
                                            Duration(milliseconds: 800)),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageTransition(
                              child: PersonalLoanscreen(),
                              type: PageTransitionType.fade,
                              curve: Curves.slowMiddle,
                              duration: Duration(milliseconds: 800),
                              reverseDuration: Duration(milliseconds: 800)),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  //width: 320,
                                  height: 170,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    children: [
                                      Stack(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(26.0),
                                            child: Container(
                                              width: 25.w,
                                              height: 12.h,
                                              decoration: BoxDecoration(
                                                color: Colors.grey[100],
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.2),
                                                    spreadRadius: 5,
                                                    blurRadius: 7,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(20.0),
                                            child: Container(
                                              margin: EdgeInsets.symmetric(horizontal: 2.w),
                                              alignment: Alignment.topLeft,
                                              child: Image.asset(
                                                'assets/images/meter.png',
                                                width: 25.w,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:50.0,right:56,top:80),
                                            child: Container(
                                              child: CustomPaint(size: Size(55, 55), painter: DrawTriangle()),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(43.0),
                                            child: Container(
                                              width: 16.w,
                                              height: 7.h,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.1),
                                                    spreadRadius: 5,
                                                    blurRadius: 5,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(50.0),
                                            child: Container(
                                              width: 13.w,
                                              height: 4.5.h,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                shape: BoxShape.circle,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withOpacity(0.1),
                                                    spreadRadius: 5,
                                                    blurRadius: 5,
                                                    offset: Offset(0, 3), // changes position of shadow
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left:65.0,top:55),
                                                child: Text("740",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                        fontSize: 12
                                                    ),
                                                    ),
                                              ),
                                              // Padding(
                                              //   padding: const EdgeInsets.only(left:60.0,top:8.0),
                                              //   child: Text("Average Score",
                                              //       style: TextStyle(
                                              //         color: Colors.blue,
                                              //             fontSize: 8
                                              //       ),
                                              //       ),
                                              // ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("CREDIT SCORE",
                                              style: TextStyle(
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold,
                                                  fontSize: 17
                                              ),
                                            ),
                                            SizedBox(
                                                height : 8
                                            ),
                                            Text("High score means higher approval\non loans and cards",
                                              style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 10
                                              ),
                                            ),
                                            SizedBox(
                                                height : 8
                                            ),
                                            Text("720/900",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(left:70.0,top:8),
                                              child: Align(
                                                alignment: FractionalOffset.bottomRight,
                                                child: FlatButton(
                                                  onPressed: () {},
                                                  color: Colors.blue,
                                                  child: Text("KNOW MORE",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ),

                    //Complete profile for preapproved offers.
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: 40.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.w),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.fromLTRB(2.w, 1.h, 1.w, 0),
                                    child: Text(
                                      "Complete\nProfile for Pre-Approved\nOffers",
                                      style: TextStyle(
                                          color: Color(0xFFAC2C9E),
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12.sp),
                                    ),
                                  ),
                                  Container(
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.fromLTRB(0, 0, 1.w, 0),
                                      child: Image.asset(
                                          "assets/images/completeprofile.png",
                                          width: 15.w)),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  width: 40.w,
                                  height: 20.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        margin: EdgeInsets.fromLTRB(
                                            2.w, 1.h, 1.w, 0),
                                        child: Text(
                                          "Refer & Earn\n₹ 5,000/\nweek",
                                          style: TextStyle(
                                              color: Color(0xFFAC2C9E),
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12.sp),
                                        ),
                                      ),
                                      Container(
                                          alignment: Alignment.bottomRight,
                                          margin: EdgeInsets.fromLTRB(
                                              0, 2.h, 1.w, 0),
                                          child: Image.asset(
                                              "assets/images/referearn.png",
                                              width: 15.w)),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  /*  Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PersonalLoanscreen()),
                                );*/
                                  showModalBottomSheet<void>(
                                    //backgroundColor: Colors.transparent,
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.0),
                                          topRight: Radius.circular(20.0),
                                          bottomLeft: Radius.circular(15.0),
                                          bottomRight: Radius.circular(15.0)),
                                    ),

                                    context: context,
                                    builder: (BuildContext context) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          height: 60.h,
                                          //margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                          child: Stack(
                                            children: <Widget>[
                                              // The containers in the background
                                              ListView(
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                children: <Widget>[
                                                  Container(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    height: 35.h,
                                                    // color: Colors.blue,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  20.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  20.0),
                                                        ),
                                                        gradient:
                                                            LinearGradient(
                                                          begin:
                                                              Alignment.topLeft,
                                                          end: Alignment
                                                              .topRight,
                                                          colors: <Color>[
                                                            Color(0xff0159de),
                                                            Color(0xff004cbc),
                                                            Color(0xff023b92),
                                                            Color(0xff002d70),
                                                          ],
                                                        )),
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          // height: 70,
                                                          // color: Colors.white,
                                                          child: Row(
                                                            children: <Widget>[
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          7.w,
                                                                          2.h,
                                                                          7.w,
                                                                          0),
                                                                      child:
                                                                          Text(
                                                                        "Cashback for you &\nyour friend",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.normal,
                                                                            fontSize: 17.sp),
                                                                      ),
                                                                    ),
                                                                    Container(
                                                                      margin: EdgeInsets.fromLTRB(
                                                                          7.w,
                                                                          2.h,
                                                                          7.w,
                                                                          0),
                                                                      child:
                                                                          Text(
                                                                        "You and your referral earns\nmoney when your referral\npays on 16 digit",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey[400],
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.normal,
                                                                            fontSize: 10.sp),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                          7.w,
                                                                          2.h,
                                                                          7.w,
                                                                          0),
                                                                  child: Image.asset(
                                                                      "assets/images/cashback.png",
                                                                      width: 30
                                                                          .w)),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          margin: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      20.w,
                                                                  vertical:
                                                                      3.h),
                                                          height: 6.h,
                                                          //width: double.infinity,
                                                          width: 50.w,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Colors.white,
                                                            // color: const Color.fromARGB(255, 253, 188, 51),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20),
                                                          ),

                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 0,
                                                                  top: 0,
                                                                  right: 7.w,
                                                                  bottom: 0,
                                                                ),
                                                                child: Text(
                                                                  'Track Status',
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                              .blue[
                                                                          400],
                                                                      fontSize:
                                                                          12.sp),
                                                                ),
                                                              ),
                                                              Image.asset(
                                                                "assets/images/track.png",
                                                                color: Colors
                                                                    .blue[400],
                                                                width: 5.w,
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  new Container(
                                                    height: 65.h,
                                                    color: Colors.white,
                                                  )
                                                ],
                                              ),
                                              new Container(
                                                alignment: Alignment.topCenter,
                                                padding: new EdgeInsets.only(
                                                    top: 32.h,
                                                    right: 0.0,
                                                    left: 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20.0),
                                                      topRight:
                                                          Radius.circular(20.0),
                                                    ),
                                                    color: Colors.white,
                                                  ),
                                                  child: Container(
                                                    width: double.infinity,
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 2.w,
                                                            vertical: 5.h),
                                                    // height: 400,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              40),
                                                      // color: Color(0xfff2f2f2),
                                                      color: Colors.white,
                                                    ),
                                                    child: ListView(
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 7.h,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  0.0),
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  // color: Color(0xff0f2f2f2),
                                                                  color: Colors
                                                                      .white),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                        margin: EdgeInsets.symmetric(
                                                                            horizontal: 5
                                                                                .w),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/images/whatapp.png",
                                                                          width:
                                                                              10.w,
                                                                        )),
                                                                    Text(
                                                                        'Whatsapp',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey,
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12.sp)),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 7.h,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  0.0),
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  // color: Color(0xff0f2f2f2),
                                                                  color: Colors
                                                                      .white),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                        margin: EdgeInsets.symmetric(
                                                                            horizontal: 5
                                                                                .w),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/images/telegram.png",
                                                                          width:
                                                                              10.w,
                                                                        )),
                                                                    Text(
                                                                        'telegram',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey,
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12.sp)),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 7.h,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  0.0),
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  // color: Color(0xff0f2f2f2),
                                                                  color: Colors
                                                                      .white),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                        margin: EdgeInsets.symmetric(
                                                                            horizontal: 5
                                                                                .w),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/images/instagram.png",
                                                                          width:
                                                                              10.w,
                                                                        )),
                                                                    Text(
                                                                        'instagram',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey,
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12.sp)),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 7.h,
                                                          padding:
                                                              EdgeInsets.all(
                                                                  0.0),
                                                          decoration:
                                                              BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              40),
                                                                  // color: Color(0xff0f2f2f2),
                                                                  color: Colors
                                                                      .white),
                                                          child: Column(
                                                            children: [
                                                              Container(
                                                                child: Row(
                                                                  children: <
                                                                      Widget>[
                                                                    Container(
                                                                        margin: EdgeInsets.symmetric(
                                                                            horizontal: 5
                                                                                .w),
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Image
                                                                            .asset(
                                                                          "assets/images/facebook.png",
                                                                          width:
                                                                              10.w,
                                                                        )),
                                                                    Text(
                                                                        'facebook',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey,
                                                                            fontStyle: FontStyle.normal,
                                                                            fontWeight: FontWeight.bold,
                                                                            fontSize: 12.sp)),
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
                                              )
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Card(
                          margin: EdgeInsets.fromLTRB(3.w, 1.h, 3.w, 1.h),
                          elevation: 8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: double.infinity,
                                height: 7.h,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4.w),
                                  color: Colors.white,
                                ),
                                child: Container(
                                  margin:
                                      EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 1.h),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(2.w),
                                    ),
                                  ),
                                  width: double.infinity, //Your desire Width
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            child: Text(
                                              'FINANCIAL KUNDLI',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontStyle: FontStyle.normal,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 9.sp),
                                            ),
                                          ),
                                          Text(
                                            'This month, 12-15 jun',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontStyle: FontStyle.normal,
                                              fontWeight: FontWeight.normal,
                                              fontSize: 8.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                      InkWell(
                                          child: Container(
                                            alignment: Alignment.center,
                                            //padding: EdgeInsets.all(2.0),
                                            width: 20.w,
                                            height: 4.h,
                                            //margin: EdgeInsets.fromLTRB(15, 0, 10, 0),

                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(2.w),
                                                // color: Color(0xff002860),
                                                border: Border.all(
                                                    color: Color(0xff002860),
                                                    width: 1),
                                                boxShadow: [
                                                  BoxShadow(
                                                      spreadRadius: 2,
                                                      blurRadius: 15,
                                                      offset: Offset(-5, -3),
                                                      color: Colors.white)
                                                ]),
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(
                                                      2.w, 0, 1.h, 0),
                                                  child: Text('Month',
                                                      style: TextStyle(
                                                          color:
                                                              Colors.blue[800],
                                                          fontStyle:
                                                              FontStyle.normal,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 8.sp)),
                                                ),
                                                Icon(
                                                  Icons.arrow_drop_down,
                                                  color: Colors.blue,
                                                )
                                              ],
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              PageTransition(
                                                  child: ExpenseRecordScreen(),
                                                  type: PageTransitionType.fade,
                                                  curve: Curves.slowMiddle,
                                                  duration: Duration(
                                                      milliseconds: 800),
                                                  reverseDuration: Duration(
                                                      milliseconds: 800)),
                                            );
                                          }),
                                    ],
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left: 4.w),
                                    child: Text(
                                      "        65%\nFood & Clothing",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 8.sp),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        child: Hero(
                                            tag: 'piechart',
                                            child: Image.asset(
                                              "assets/images/piechart.png",
                                              height: 20.h,
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                        EdgeInsets.only(right: 10.w,bottom: 2.h),
                                        child: Text(
                                          "  12% Bills\n    &debt",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 8.sp),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    "  20%\nOthers",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 8.sp),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    ),

                    Hero(
                      tag: 'recharge',
                      child: Container(
                        height: 145.h,
                        width: 100.w,
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 4.h),
                        child: Neumorphic(
                          style: NeumorphicStyle(
                            depth: NeumorphicTheme.embossDepth(context),
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(8)),
                            intensity: 10.0,
                            lightSource: LightSource.topLeft,
                            color: Colors.transparent,
                            // color: Color(0xff0ebeff1),
                            //color: Color(0xff0eef2f4),

                            /* color: const Color.fromRGBO(
                                            236,
                                           240,
                                           242,
                                            255
                                        ),*/
                          ),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                margin: EdgeInsets.fromLTRB(5.w, 4.h, 0, 0),
                                child: Text('Utilities',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp)),
                              ),

                              //Utilities
                              Container(
                                width: double.infinity,
                                child: GridView.count(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.h),
                                    crossAxisCount: 3,
                                    childAspectRatio: (4 / 3),
                                    shrinkWrap: true,
                                    //crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 10,
                                    physics: NeverScrollableScrollPhysics(),
                                    children:
                                        List.generate(choices.length, (index) {
                                      return Center(
                                        child:
                                            SelectCard(choice: choices[index]),
                                      );
                                    })),
                              ),

                              Container(
                                width: double.infinity,
                                // alignment: Alignment.topLeft,
                                margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                                child: Text('Loan & Payments',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp)),
                              ),
                              Container(
                                width: double.infinity,
                                child: GridView.count(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 3.h),
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    childAspectRatio: (4 / 3),
                                    //crossAxisSpacing: 0.0,
                                    // mainAxisSpacing: 10,
                                    physics: NeverScrollableScrollPhysics(),
                                    children:
                                        List.generate(choices2.length, (index) {
                                      return Center(
                                        child: SelectCard2(
                                            choice2: choices2[index]),
                                      );
                                    })),
                              ),
                              Container(
                                // height: 140,
                                width: double.infinity,
                                // alignment: Alignment.topLeft,
                                margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                                child: Text('Recharge & Bills',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp)),
                              ),
                              Container(
                                width: double.infinity,
                                child: GridView.count(
                                    padding:
                                        EdgeInsets.only(top: 3.h, bottom: 2.h),
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    childAspectRatio: (4 / 3),
                                    //crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 10,
                                    physics: NeverScrollableScrollPhysics(),
                                    children:
                                        List.generate(choices3.length, (index) {
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
                                margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                                child: Text('Insurance',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp)),
                              ),

                              Container(
                                width: double.infinity,
                                child: GridView.count(
                                    padding:
                                        EdgeInsets.only(top: 2.h, bottom: 2.h),
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    childAspectRatio: (4 / 3),
                                    //crossAxisSpacing: 0.0,
                                    mainAxisSpacing: 10,
                                    physics: NeverScrollableScrollPhysics(),
                                    children:
                                        List.generate(choice4.length, (index) {
                                      return Center(
                                        child: SelectCard4(
                                            choice4: choice4[index]),
                                      );
                                    })),
                              ),
                              Container(
                                // height: 140,
                                width: double.infinity,
                                // alignment: Alignment.topLeft,
                                margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),
                                child: Text('Municipality',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 11.sp)),
                              ),
                              Container(
                                width: double.infinity,
                                child: GridView.count(
                                    padding: EdgeInsets.only(top: 2.h),
                                    crossAxisCount: 3,
                                    shrinkWrap: true,
                                    childAspectRatio: (4 / 3),
                                    //crossAxisSpacing: 0.0,
                                    //mainAxisSpacing: 10,
                                    physics: NeverScrollableScrollPhysics(),
                                    children:
                                        List.generate(choices5.length, (index) {
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
      height: 15.h,
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
              margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
              child: Image.asset(
                choice.image,
                width: 7.w,
              ),
            ),
            Container(
              child: Text(choice.title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 7.sp)),
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
      width: 25.w,
      height: 15.h,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Image.asset(
                choice2.image,
                width: 10.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.h),
              child: Text(choice2.title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 7.sp)),
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
      height: 15.h,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Image.asset(
                choice3.image,
                width: 35,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 2.h),
              child: Text(choice3.title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 9)),
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
      height: 15.h,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              child: Image.asset(
                choice4.image,
                width: 10.w,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.h),
              child: Text(choice4.title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 7.sp)),
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
      height: 15.h,
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.w),
              child: Image.asset(choice5.image, width: 10.w),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.h),
              child: Text(choice5.title,
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                      fontSize: 7.sp)),
            ),
          ],
        )),
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
