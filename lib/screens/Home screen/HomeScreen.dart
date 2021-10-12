import 'dart:ui' as ui;
import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:page_transition/page_transition.dart';
import '../Famcard%20screen/FamilyCardscreen.dart';
import '../Home%20screen/AddChildscreen.dart';
import '../Profile%20screen/Profilescreen.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenPageState createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreen> {
  //List<CheckBoxListTileModel> checkBoxListTileModel =
  // CheckBoxListTileModel.getUsers();

  List<bool> checked = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appbar given
      /* appBar: AppBar(
        title: Text("Home Screen "),
      ),*/
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Container(

          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: <Color>[
                  Color(0xff0159de),
                  Color(0xff004cbc),
                  Color(0xff023b92),
                  Color(0xff002d70),
                  // colors: [Colors.green, Colors.blue]
                  //stops: [0.1, 0.4, 0.7, 0.9],
                  //stops: [0.1, 0.5],

                  // Color(0xff005bdd),/*0xff005bdd*/
                  //Color(0xff002e70),
                  //Color(0xff002860),
                  //Color(0xff01142b),
                ],
              )),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 7.w, vertical: 5.5.h),
                child: Row(
                  children: <Widget>[
                    InkWell(
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(60),
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
                                width: 11.5.w,
                              ),
                            )),
                        onTap: () {
                          Navigator.push(
                            context,
                            PageTransition(
                                child: ProfileScreen(),
                                type: PageTransitionType.fade,
                                curve: Curves.slowMiddle,
                                duration:
                                Duration(milliseconds: 900),
                                reverseDuration:
                                Duration(milliseconds: 900)),
                          );
                        }),
                    SizedBox(width: 4.w),
                    Container(
                      child: Text('Hi Kabir',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Mukta',
                            fontSize: 14.sp,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 2.w),
                child: (Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
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
                                color: Colors.blue.shade800
                                    .withOpacity(0.95),
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
                                padding: EdgeInsets.all(1.w),
                                child: Image.asset(
                                  "assets/images/pocketmoney.png",
                                  width: 8.w,
                                ),
                              ),
                            ),
                            onTap: () {
                              showAnimatedDialog(
                                  context: context,
                                  duration:
                                  Duration(milliseconds: 500),
                                  barrierDismissible: true,
                                  animationType:
                                  DialogTransitionType
                                      .slideFromBottomFade,
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(builder:
                                        (context, setState) {
                                      return AlertDialog(
                                        backgroundColor:
                                        Color(0xffecf0f2),
                                        insetPadding:
                                        EdgeInsets.zero,
                                        contentPadding:
                                        EdgeInsets.zero,
                                        shape:
                                        RoundedRectangleBorder(
                                            borderRadius:
                                            BorderRadius
                                                .circular(
                                                20)),
                                        elevation: 16,
                                        title: Padding(
                                          padding: EdgeInsets.only(
                                              top: 1.h),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment
                                                .spaceBetween,
                                            crossAxisAlignment:
                                            CrossAxisAlignment
                                                .start,
                                            children: <Widget>[
                                              Text(
                                                'Select child',
                                                style: TextStyle(
                                                    color: Colors
                                                        .black,
                                                    letterSpacing:
                                                    .8,
                                                    fontWeight:
                                                    FontWeight
                                                        .w700,
                                                    fontSize: 18.sp,
                                                    decoration:
                                                    TextDecoration
                                                        .none),
                                              ),
                                              Container(
                                                decoration:
                                                BoxDecoration(
                                                  borderRadius:
                                                  BorderRadius
                                                      .circular(
                                                      1.w),
                                                  color: Color(
                                                      0xffc5d8f5),
                                                ),
                                                child: Padding(
                                                  padding:
                                                  EdgeInsets
                                                      .all(2.w),
                                                  child: Text(
                                                      'Add Child',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .blueAccent,
                                                          fontStyle:
                                                          FontStyle
                                                              .normal,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold,
                                                          fontSize:
                                                          8.sp,
                                                          decoration:
                                                          TextDecoration
                                                              .none)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        content: pocketmoneylisting(
                                            context, setState),
                                      );
                                    });
                                  });
                            },
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: Text("Pocket Money",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Muli',
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w600)),
                              //fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                            child: InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(1.w),
                                width: 13.w,
                                height: 5.h,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.shade800
                                        .withOpacity(0.9),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-2, -2),
                                          color: Colors.white)
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.all(1.w),
                                  child: Image.asset(
                                    "assets/images/ordercard.png",
                                    width: 8.w,
                                  ),
                                ),
                              ),
                              onTap: () {
                                showAnimatedDialog(
                                    context: context,
                                    duration:
                                    Duration(milliseconds: 500),
                                    barrierDismissible: true,
                                    animationType:
                                    DialogTransitionType
                                        .slideFromBottomFade,
                                    builder: (BuildContext context) {
                                      return StatefulBuilder(builder:
                                          (context, setState) {
                                        return AlertDialog(
                                          backgroundColor:
                                          Color(0xffecf0f2),
                                          insetPadding:
                                          EdgeInsets.zero,
                                          contentPadding:
                                          EdgeInsets.zero,
                                          shape:
                                          RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius
                                                  .circular(
                                                  20)),
                                          elevation: 16,
                                          title: Padding(
                                            padding: EdgeInsets.only(
                                                top: 1.h),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment
                                                  .spaceBetween,
                                              crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                              children: <Widget>[
                                                Text(
                                                  'Select child',
                                                  style: TextStyle(
                                                      color: Colors
                                                          .black,
                                                      letterSpacing:
                                                      .8,
                                                      fontWeight:
                                                      FontWeight
                                                          .w700,
                                                      fontSize: 18.sp,
                                                      decoration:
                                                      TextDecoration
                                                          .none),
                                                ),
                                                Container(
                                                  decoration:
                                                  BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        1.w),
                                                    color: Color(
                                                        0xffc5d8f5),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                    EdgeInsets
                                                        .all(2.w),
                                                    child: Text(
                                                        'Add Child',
                                                        style: TextStyle(
                                                            color: Colors
                                                                .blueAccent,
                                                            fontStyle:
                                                            FontStyle
                                                                .normal,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold,
                                                            fontSize:
                                                            8.sp,
                                                            decoration:
                                                            TextDecoration
                                                                .none)),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          content: pocketmoneylisting(
                                              context, setState),
                                        );
                                      });
                                    });
                              },
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: Text("Order Card",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Muli',
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.w600,
                                  )),
                              //fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          InkWell(
                              child: Container(
                                padding: EdgeInsets.all(1.w),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.blue.shade700,
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 15,
                                          offset: Offset(-5, -3),
                                          color: Colors.white)
                                    ]),
                                child: Padding(
                                  padding: EdgeInsets.all(1.w),
                                  child: Image.asset(
                                    "assets/images/addchild.png",
                                    height: 3.h,
                                  ),
                                ),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  PageTransition(
                                      child: Addchildscreen(),
                                      type: PageTransitionType.fade,
                                      duration: Duration(
                                          milliseconds: 800),
                                      reverseDuration: Duration(
                                          milliseconds: 800)),
                                );
                              }),
                          Container(
                            child: Padding(
                              padding: EdgeInsets.all(3.w),
                              child: Text("Add Child",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Muli',
                                      fontSize: 9.sp,
                                      fontWeight: FontWeight.w600)),
                              //fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ])),
              ),

             Container(

               decoration: BoxDecoration(
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(20.0),
                   topRight: Radius.circular(20.0),
                 ),
                 color: Colors.white,
               ),
               child: Column(children: [
                 Container(
                   width: double.infinity, //Your desire Width
                   // height: 200,//Your desire Height
                   margin: EdgeInsets.only(top: 4.h),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                           margin: EdgeInsets.symmetric(horizontal: 3.w),
                           child: Text('My Children',
                               style: TextStyle(
                                 color: Colors.black,
                                 fontFamily: 'Muli',
                                 fontSize: 12.sp,
                                 fontWeight: FontWeight.w600,
                               ))),
                       InkWell(
                           child: Container(
                             margin: EdgeInsets.symmetric(horizontal: 5.w),
                             //width: 50,
                             padding: EdgeInsets.all(10.0),
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 //color: Color(0xff002860),
                                 color: Colors.blue.withOpacity(0.15),
                                 boxShadow: [
                                   BoxShadow(
                                       spreadRadius: 2,
                                       blurRadius: 15,
                                       offset: Offset(-5, -3),
                                       color: Colors.white)
                                 ]),
                             child: Text('Add Child',
                                 style: TextStyle(
                                     color: Colors.blue[900],
                                     fontFamily: 'Muli',
                                     fontSize: 9.sp,
                                     fontWeight: FontWeight.w600)),
                           ),
                           onTap: () {
                             Navigator.push(
                               context,
                               MaterialPageRoute(
                                   builder: (context) => Addchildscreen()),
                             );
                           }),
                     ],
                   ),
                 ),
                 Container(
                   child: Container(
                     //height: MediaQuery.of(context).size.height,
                     child: ListView(
                       scrollDirection: Axis.vertical,
                       padding: EdgeInsets.only(bottom: 15.h),
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       children: List.generate(choices.length, (index) {
                         return Center(
                           child: SelectCard(choice: choices[index]),
                         );
                       }),
                     ),
                   ),
                 ),
               ],),
             )

            ],
          ),
        ),
      ),
    );
  }

  Widget pocketmoneylisting(context, StateSetter setState_) {
    final List<Map> details = [
      {
        "image": "assets/images/selectchild.png",
        "name": "Karunnya Chaudhary",
        "sub": "pocket money",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Kabir Chaudhary",
        "sub": "pocket money",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Kavita Chaudhary",
        "sub": "pocket money",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Karunnya Chaudhary",
        "sub": "pocket money",
      },
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          margin: EdgeInsets.only(top: 5.w, bottom: 5.h),
          //color:Color(0xffecf0f2),
          height: 40.h, // Change as per your requirement
          width: double.maxFinite, // Change as per your requirement
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: details.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              for (int i = 0; i < details.length; i++) {
                checked.add(false);
              }
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(8)),
                height: 10.h,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                      shape: NeumorphicShape.flat,
                      depth: 2,
                      intensity: 10,
                      shadowLightColor: Colors.white,
                      lightSource: LightSource.topLeft,
                      // color: Colors.white
                      color: Color(0xffecf0f2)),
                  child: ListTile(
                    onTap: () {
                      setState_(() {
                        print(checked[index]);
                        checked[index] = !checked[index];
                      });
                    },
                    leading: Neumorphic(
                      style: NeumorphicStyle(
                          depth: NeumorphicTheme.embossDepth(context),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(40)),
                          intensity: 10.0,
                          lightSource: LightSource.topLeft,
                          //color: Colors.white
                          color: Color(0xffecf0f2)),
                      child: Padding(
                        padding: EdgeInsets.all(2.w),
                        child: CircleAvatar(
                          backgroundColor: Colors.white10,
                          backgroundImage: AssetImage((details[index][
                              'image'])), // no matter how big it is, it won't overflow
                        ),
                      ),
                    ),
                    title: Text(
                      details[index]['name'],
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    // )),
                    subtitle: Text(
                      details[index]['sub'],
                      style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 10.sp,
                          fontWeight: FontWeight.w600),
                    ),

                    trailing:
                        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      Icon(
                        !checked[index]
                            ? Icons.circle_outlined
                            : Icons.check_circle_outline,
                        color: Colors.blue[800],
                      ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget OrderCardContent(context, StateSetter setState_) {
    final List<Map> details = [
      {
        "image": "assets/images/selectchild.png",
        "name": "Karunnya Chaudhary",
        "sub": "Order Card",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Kabir Chaudhary",
        "sub": "Order Card",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Kavita Chaudhary",
        "sub": "Order Card",
      },
      {
        "image": "assets/images/selectchild.png",
        "name": "Karunnya Chaudhary",
        "sub": "Order Card",
      },
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          //color:Color(0xffecf0f2),
          width: double.maxFinite, // Change as per your requirement
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: details.length,
            itemBuilder: (BuildContext context, int index) {
              for (int i = 0; i < details.length; i++) {
                checked.add(false);
              }
              return Container(
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        spreadRadius: 1,
                        color: Colors.black.withOpacity(0.2),
                        offset: Offset(0.0, 0.0),
                        blurRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xffecf0f2)),
                height: 80,
                child: Neumorphic(
                  style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(
                          BorderRadius.circular(8)),
                      shape: NeumorphicShape.flat,
                      depth: 2,
                      intensity: 10,
                      shadowLightColor: Colors.white,
                      lightSource: LightSource.topLeft,
                      // color: Colors.white
                      color: Color(0xffecf0f2)),
                  child: ListTile(
                    onTap: () {
                      setState_(() {
                        print(checked[index]);
                        checked[index] = !checked[index];
                      });
                    },
                    leading: Neumorphic(
                      style: NeumorphicStyle(
                          depth: NeumorphicTheme.embossDepth(context),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(40)),
                          intensity: 10.0,
                          lightSource: LightSource.topLeft,
                          //color: Colors.white
                          color: Color(0xffecf0f2)),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.white10,
                          backgroundImage: AssetImage((details[index][
                              'image'])), // no matter how big it is, it won't overflow
                        ),
                      ),
                    ),
                    title: Text(
                      details[index]['name'],
                    ),
                    // )),
                    subtitle: Text(
                      details[index]['sub'],
                      style: TextStyle(color: Colors.blue[800], fontSize: 13),
                    ),

                    trailing:
                        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      Icon(
                        !checked[index]
                            ? Icons.circle_outlined
                            : Icons.check_circle,
                        color: Colors.blue[800],
                      ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

/*
class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  String subtitle;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.img, required this.title,required this.subtitle ,required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/selectchild.png',
          title: "Karunnya chaudhary",
          subtitle: "pocketmoney",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/selectchild.png',
          title: "Karunnya chaudhary",
          subtitle: "pocketmoney",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/selectchild.png',
          title: "Karunnya chaudhary",
          subtitle: "pocketmoney",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/selectchild.png',
          title: "Karunnya chaudhary",
          subtitle: "pocketmoney",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'assets/images/selectchild.png',
          title: "Karunnya chaudhary",
          subtitle: "pocketmoney",
          isCheck: false),
    ];
  }
}
*/

  Widget _buildRow(String imageAsset, String name, String money) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Container(height: 0, color: Colors.black),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Card(
                child: Container(
                  height: 70,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      Neumorphic(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              // color: Color(0xff002860),
                              boxShadow: [
                                BoxShadow(
                                    spreadRadius: 2,
                                    blurRadius: 15,
                                    offset: Offset(-5, -3),
                                    color: Colors.white)
                              ]),
                          width: 55,
                          height: 55,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(
                              imageAsset,
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(name,
                                style: TextStyle(
                                    color: Colors.grey[800],
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12)),
                            Text(money,
                                style: TextStyle(
                                    color: Colors.blue[400],
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Choice {
  const Choice(
      {required this.image,
      required this.icon,
      required this.visa,
      required this.cardnumber,
      required this.simcard,
      required this.personname,
      required this.balance,
      required this.startColor,
      required this.endColor});

  final String image;
  final IconData icon;
  final String visa;
  final String cardnumber;
  final String simcard;
  final String personname;
  final String balance;
  final Color startColor;
  final Color endColor;
}

const List<Choice> choices = const <Choice>[
  const Choice(
      image: ('assets/images/imagecard.png'),
      icon: Icons.more_vert,
      visa: ('assets/images/visa_logo.png'),
      cardnumber: ' 7656         5432        3334        2234 ',
      simcard: ('assets/images/card_chip.png'),
      personname: 'KARUNNYA',
      balance: "BALANCE: ₹ 500/-",
      startColor: Color(0xfff4d5d4),
      endColor: Color(0xfffefefe)),
  Choice(
      image: ('assets/images/imagecard.png'),
      icon: Icons.more_vert,
      visa: ('assets/images/visa_logo.png'),
      cardnumber: ' 7656         5432        3334        2234 ',
      simcard: ('assets/images/card_chip.png'),
      personname: 'KARUNNYA',
      balance: "BALANCE: ₹ 500/-",
      startColor: Color(0xffd7e3c4),
      endColor: Color(0xfff1f1ed)),
  Choice(
      image: ('assets/images/imagecard.png'),
      icon: Icons.more_vert,
      visa: ('assets/images/visa_logo.png'),
      cardnumber: ' 7656         5432        3334        2234 ',
      simcard: ('assets/images/card_chip.png'),
      personname: 'KARUNNYA',
      balance: "BALANCE: ₹ 500/-",
      startColor: Color(0xffcacfeb),
      endColor: Color(0xffeef0f5)),
  Choice(
      image: ('assets/images/imagecard.png'),
      icon: Icons.more_vert,
      visa: ('assets/images/visa_logo.png'),
      cardnumber: ' 7656         5432        3334        2234 ',
      simcard: ('assets/images/card_chip.png'),
      personname: 'KARUNNYA',
      balance: "BALANCE: ₹ 500/-",
      startColor: Color(0xfff4d5d4),
      endColor: Color(0xfffefefe)),
];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(PageTransition(
            child: FamilyCardscreen(),
            type: PageTransitionType.fade,
            duration: Duration(seconds: 1),
            reverseDuration: Duration(seconds: 1)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 0.7.h),
        width: double.infinity,
        height: 19.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
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
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Container(
                      alignment: Alignment.topRight,
                      child: SingleChildScrollView(
                          physics: NeverScrollableScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          child: ClipRRect(
                            child: ImageFiltered(
                                imageFilter:
                                    ImageFilter.blur(sigmaX: 0.7, sigmaY: 0.7),
                                child: Opacity(
                                    opacity: 0.5,
                                    child: Image.asset(
                                      choice.image,
                                      width: 50.w,
                                      height: 25.h,
                                    ))),
                          ))),
                  Container(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 1.w),
                        child: Container(
                          alignment: Alignment.topRight,
                          margin: EdgeInsets.symmetric(vertical: 1.h),
                          //color: Colors.red,
                          // width: 70,
                          // height: 70,
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.black,
                            size: 17.sp,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 2.w),
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          choice.visa,
                          width: 15.w,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 2.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                alignment: Alignment.topLeft,
                                //margin:EdgeInsets.fromLTRB(20, 10, 20, 0),
                                child: Text(choice.cardnumber,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Muli',
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w700)),
                              ),
                              Image.asset(
                                choice.simcard,
                                width: 5.w,
                              ),
                            ]),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 3.w, vertical: 1.h),
                              child: Text(choice.personname,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Muli',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600)),
                            ),
                            Container(
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.symmetric(horizontal: 3.w),
                              child: Text(choice.balance,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Muli',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ]),
                    ]),
                  )
                ],
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
/*
//for gradient colors.
class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 24.0;

    var paint = Paint();
    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);

    var path = Path()
      ..moveTo(0, size.height)
      ..lineTo(size.width - radius, size.height)
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - radius)
      ..lineTo(size.width, radius)
      ..quadraticBezierTo(size.width, 0, size.width - radius, 0)
      ..lineTo(size.width - 1.5 * radius, 0)
      ..quadraticBezierTo(-radius, 2 * radius, 0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
*/

/*Container(
margin:EdgeInsets.fromLTRB(20, 10, 20, 0),
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
//height: 200,
child: Column(
children: [
Expanded(
child: Stack(
children: [
Container(
alignment: Alignment.topRight,
child: SingleChildScrollView(
scrollDirection: Axis.vertical,
child: Image.asset("assets/images/imagecard.png",width: 200,height: 180,))
),Container(
child: Column(
*/ /*      crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment:MainAxisAlignment.start,*/ /*
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
)
],
),
),
],
),
),*/
