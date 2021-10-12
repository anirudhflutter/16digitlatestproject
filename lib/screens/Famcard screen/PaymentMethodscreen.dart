import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Famcard%20screen/AddMoneyscreen.dart';
import '../Wallet%20screen/SendMoneyAmountscreen.dart';
import 'package:sizer/sizer.dart';

class Paymentmethodsscreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return PaymentmethodsscreenState();
  }
}
enum FavoriteMethod { hdfc, sbi, pnb }
class PaymentmethodsscreenState extends State<Paymentmethodsscreen> {
  FavoriteMethod _method = FavoriteMethod.hdfc;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(
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
                                margin:EdgeInsets.fromLTRB(30, 40, 30, 0),
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
                                width: 45,height: 45,),
                            ),

                            SizedBox(width: 0),
                          ],
                        ),Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            child: Text('Payment Methods', style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold,fontSize: 14)),
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
                      color: Color(0xffecf0f2)


                  ),child:Column(
                    children: [
                      Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 5.w,vertical: 3.h),
                      child: Container(
                        height: 25.h,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.8),
                              offset: Offset(-6.0, -6.0),
                              blurRadius: 8,
                            ),BoxShadow(
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
                          style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                              intensity: 10.0,
                              lightSource: LightSource.topLeft,
                              //color: Colors.white
                              color: Color(0xffecf0f2)


                          ),
                          child: Column(
                            children: [
                              Container(
                               height: 7.h,
                                child: ListTile(
                                  title: const Text('HDFC Bank Debit Card'),
                                  subtitle: Row(
                                    children: [
                                      Text("123********7809"),
                                      Image.asset("assets/images/master.png",width: 7.w,),
                                    ],
                                  ),
                                  trailing: Image.asset("assets/images/hdfc.png",width: 7.w,),
                                  leading: Radio<FavoriteMethod>(
                                    value: FavoriteMethod.hdfc,
                                    groupValue: _method,
                                    onChanged: (value) {
                                      setState(() {
                                        _method = value!;
                                      });
                                    },
                                  ),
                                ),


                ),
                              Container(
                                height: 7.h,
                                child: ListTile(
                          title: const Text('SBI Debit Card'),
                          subtitle: Row(
                            children: [
                              Text("123********7809"),
                              Image.asset("assets/images/master.png",width: 7.w,),
                            ],
                          ),
                          trailing: Image.asset("assets/images/sbi.png",width: 7.w,),
                          leading: Radio<FavoriteMethod>(
                            value: FavoriteMethod.sbi,
                            groupValue: _method,
                            onChanged: (value) {
                              setState(() {
                                _method = value!;
                              });
                            },
                          ),
                      ),
                ),Container(
                                height: 7.h,
                      child: ListTile(
                          title: const Text('PNB Debit Card'),
                          subtitle: Row(
                            children: [
                              Text("123********7809"),
                              Image.asset("assets/images/master.png",width: 7.w,),
                            ],
                          ),
                          trailing: Image.asset("assets/images/pnb.png",width: 7.w,),
                          leading: Radio<FavoriteMethod>(
                            value: FavoriteMethod.pnb,
                            groupValue: _method,
                            onChanged: (value) {
                              setState(() {
                                _method = value!;
                              });
                            },
                          ),
                      ),
                ),
                            ],
                ),
                        ),
              ),
                ),

                  Padding(
                    padding:  EdgeInsets.only(left: 5.w,right: 5.w,top: 0,bottom: 2.h),
                    child: Container(
                      height: 40.h,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.8),
                            offset: Offset(-6.0, -6.0),
                            blurRadius: 8,
                          ),BoxShadow(
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
                        style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                            intensity: 10.0,
                            lightSource: LightSource.topLeft,
                            color: Color(0xffecf0f2)
                        ),

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                  height: 8.h,

                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 0),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      new BoxShadow(color: Color(0xffebeff1)
                                        ,
                                      ),
                                    ],
                                  ), child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                            shape: NeumorphicShape.flat,
                            depth: 10,
                            intensity: 10,
                            shadowLightColor: Color(0xffebeff1),
                            lightSource: LightSource.topLeft,
                           // color: Colors.white
                            color: Color(0xffebeff1)
                      ),
                                    child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:  EdgeInsets.all(2.w),
                                          child: Container(
                                            child: Image.asset('assets/images/card2.png',
                                           height: 4.h,),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsets.all(2.w),
                                          child: Text("Debit, Credit\nCards",
                                              style: TextStyle(fontSize: 9.sp),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                  height: 8.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black, width: 0),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow: [
                                      new BoxShadow(color: Color(0xffebeff1)
                                        ,

                                      ),
                                    ],
                                  ), child: Neumorphic(
                      style: NeumorphicStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                          shape: NeumorphicShape.flat,
                          depth: 10,
                          intensity: 10,
                          shadowLightColor: Color(0xffebeff1),
                          lightSource: LightSource.topLeft,
                          // color: Colors.white
                          color: Color(0xffebeff1)
                    ),
                                    child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.all(2.w),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(color: Colors.black, width: 0),
                                            borderRadius: BorderRadius.circular(8),
                                            boxShadow: [
                                              new BoxShadow(color: Colors.white,
                                              ),
                                            ],
                                          ),
                                          child: Padding(
                                            padding:  EdgeInsets.all(1.w),
                                            child: Container(
                                              child: Hero(
                                                tag: 'bhim',
                                                child: Image.asset('assets/images/upi_fevicon.png',
                                                  height: 4.h,),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.all(2.w),
                                        child: Text("BHIM\nUPI",
                                            style: TextStyle(fontSize: 9.sp)),
                                      ),
                                    ],
                                ),
                                  ),
                                ),
                              ],
                            ),Container(
                              margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                              height: 8.h,
                              width: 35.w,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black, width: 0),
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  new BoxShadow(color: Colors.white,

                                  ),
                                ],
                              ), child: Neumorphic(
                              style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                                  shape: NeumorphicShape.flat,
                                  depth: 10,
                                  intensity: 10,
                                  shadowLightColor: Color(0xffebeff1),
                                  lightSource: LightSource.topLeft,
                                  // color: Colors.white
                                  color: Color(0xffebeff1)
                              ),
                                child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.all(2.w),
                                    child: Image.asset('assets/images/bank.png',
                                      height: 5.h,),
                                  ),
                                  Padding(
                                    padding:  EdgeInsets.all(2.w),
                                    child: Text("Net\nBanking",
                                        style: TextStyle(fontSize: 9.sp)),
                                  ),
                                ],
                            ),
                              ),
                            ), Expanded(child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 2.h),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Image.asset("assets/images/northon1.png",width: 12.w,),
                                      Image.asset("assets/images/pcj.png",width: 12.w,),
                                      Image.asset("assets/images/LOGO.png",width: 25.w,),
                                      Image.asset("assets/images/master.png",width: 12.w,),
                                      Image.asset("assets/images/visa.png",width: 12.w,),
                                    ],
                                  ),
                                ),
                              ],
                            ),),

                            Column(
                              children: <Widget> [
                                Container(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.fade,
                                            child: SendMoneyAmountscreen(),
                                            duration: Duration(milliseconds: 900),
                                            reverseDuration:
                                            Duration(milliseconds: 900)),
                                      );
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only( left: 5.w, top: 0, right: 5.w,
                                        bottom: 2.h,),
                                      height: 6.h,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.blue[800],
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      alignment: Alignment.center,
                                      child:  Text(
                                        'PROCEED',
                                        style: TextStyle(color: Colors.white, fontFamily: 'Mukta',
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
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
















