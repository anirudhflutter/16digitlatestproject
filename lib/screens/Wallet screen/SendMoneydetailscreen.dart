import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Wallet%20screen/SendMoneyAmountscreen.dart';
import 'package:sizer/sizer.dart';

class SendMoneydetailscreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return SendMoneydetailscreenState();
  }
}
class SendMoneydetailscreenState extends State<SendMoneydetailscreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body:Container(

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

                              SizedBox(width: 0),
                            ],
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
                        top: MediaQuery.of(context).size.height * .15,
                        right: 0.0,
                        left: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          topRight: Radius.circular(20.0),
                        ),
                        color: Color(0xffecf0f2),

                      ),child:Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  //color: Color(0xfff2f2f2),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(5.w, 2.h, 5.w, 0),
                                    //width: 270,
                                    width:double.infinity,
                                    height: 8.h,
                                    padding: EdgeInsets.all(0.0),
                                    decoration: BoxDecoration(
                                        borderRadius:BorderRadius.circular(40),
                                        // color: Color(0xff0f2f2f2),
                                      color: Color(0xffecf0f2),
                                    ),

                                    child: Neumorphic(
                                      //margin: EdgeInsets.only(left: 8, right: 8, top: 2, bottom:4),
                                      style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                        boxShape: NeumorphicBoxShape.stadium(),
                                        intensity: 1.0,),
                                      child: Container(
                                        color: Color(0xffecf0f2),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.fromLTRB(5.w, 0, 0, 0),
                                              alignment: Alignment.centerLeft,
                                              child: Icon(Icons.search_sharp,),
                                              width:10.w,height: 5.h,),
                                            Text('Enter Name or Mobile Number',style: TextStyle(color: Colors.blueGrey,
                                              fontFamily: 'Mukta',
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w500,)),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          //send money again list view.
                          Container(
                            margin: EdgeInsets.fromLTRB(5.w, 0, 5.w, 0),

                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xffecf0f2),
                                  )
                                ]
                            ),
                            child: Neumorphic(
                              style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                                  intensity: 10.0,
                                  lightSource: LightSource.topLeft,
                                color: Color(0xffecf0f2),
                              ),
                              child: Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.height/1.75,
                                      //height: 450
                                      child: SingleChildScrollView(
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:BorderRadius.circular(20),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color(0xffecf0f2),
                                                )
                                              ]
                                          ),

                                          child:Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            //mainAxisAlignment: MainAxisAlignment.start,
                                            children: <Widget>[
                                              Container(
                                                margin:EdgeInsets.fromLTRB(7.w, 2.h, 0, 0),
                                                child: Text('Send Money Again', style: TextStyle(color: Colors.black,
                                                  fontFamily: 'Mukta',
                                                  fontSize: 12.sp,
                                                  fontWeight: FontWeight.w700,)),
                                              ),

                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                    borderRadius:BorderRadius.circular(20),
                                                    boxShadow: [
                                                      BoxShadow(

                                                        color: Color(0xffecf0f2),
                                                      )
                                                    ]
                                                ),

                                                child: ListView(
                                                  scrollDirection: Axis.vertical,
                                                  padding: EdgeInsets.only(top: 1.h),
                                                  shrinkWrap: true,
                                                  physics: NeverScrollableScrollPhysics(),
                                                  children: List.generate(choices.length, (index) {
                                                    return Center(
                                                      child: SelectCard(choice: choices[index]),
                                                    );
                                                  }
                                                  ),
                                                ),
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),
                                    ),InkWell(onTap: () {
                                       Navigator.push(
                                                  context,
                                         PageTransition(
                                             type: PageTransitionType.fade,
                                             child: SendMoneyAmountscreen(),
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
                                            margin: EdgeInsets.only( left: 5.w, top: 2.h, right: 5.w,
                                              bottom: 2.h,),
                                            height: 6.h,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              color: Colors.blue[800],
                                              borderRadius: BorderRadius.circular(10),
                                            ),
                                            //alignment: Alignment.center,
                                            child:  Text(
                                              'Proceed',
                                              style: TextStyle(color: Colors.white, fontSize: 12.sp),
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


                        ]),) )],
            ),
          ),
        ),
      ),

    );
  }
}

class Choice {
  const Choice({required this.name,required this.fullname,required this.upiimage,
    required this.mobilenumber,required this.paymentdetail,
  });
  final String name;
  final String fullname;
  final String upiimage;
  final String mobilenumber;
  final String paymentdetail;

}

const List<Choice> choices = const <Choice>[

  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
  const Choice(name:"KS", fullname:"Kabir Singh",upiimage:("assets/images/upi_fevicon.png"),mobilenumber:"+91 987654321",paymentdetail:"Paid ₹ 100 on today,2:10 PM"),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;


  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 1.h),
      //height: 45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: <Widget> [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: 0.0, horizontal: 4.w),
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
                          new BoxShadow(color: Colors.blue,),
                        ],
                      ),
                      alignment: Alignment.center,
                      //color: Colors.blue[800],
                      width: 10.w,
                      height: 5.h,
                      child: Text(choice.name,style: TextStyle(color: Colors.white,
                        fontFamily: 'Mukta',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w400,)),
                    ),
                    SizedBox(width: 2.w),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(choice.fullname,style: TextStyle(color: Colors.black,
                            fontFamily: 'Mukta',
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w400,)),
                          Row(
                            children: [
                              Image.asset(choice.upiimage,width:2.w,height: 1.h,),
                              Text(choice.mobilenumber,style: TextStyle(color: Colors.black,
                                fontFamily: 'Mukta',
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w500,)),
                            ],
                          ),Text(choice.paymentdetail,style: TextStyle(color: Colors.black,
                            fontFamily: 'Mukta',
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w500,)),
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




