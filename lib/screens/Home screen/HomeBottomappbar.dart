import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';
import '../../constant.dart';
import '../Apply%20Screen/ApplyScreen.dart';
import '../Famcard%20screen/FamilyCardscreen.dart';
import '../Home%20screen/HomeScreen.dart';
import '../MyCardscreen.dart';
import '../Reward%20screen/RewardScreen.dart';
import '../Wallet%20screen/WalletScreen.dart';
import 'package:sizer/sizer.dart';

class HomeBottomappbar extends StatefulWidget {
  @override
  _HomeBottomappbarPageState createState() => _HomeBottomappbarPageState();
}

class _HomeBottomappbarPageState extends State<HomeBottomappbar> {
  // index given for tabs
  bool clickedCentreFAB = false;

  void updateTabSelection(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final tabs = [
    HomeScreen(),
    RewardsScreen(),
    WalletScreen(),
    MyCardScreen(),
    ApplyScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text("Home Screen"),
      ),*/
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 800),
        child: tabs[currentIndex],
      ),
      extendBody: true,
      backgroundColor: Colors.transparent,
      // floating action button in center
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 2.h),
        /*  decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                //borderRadius: new BorderRadius.circular(60.0),
             topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  spreadRadius: 4,
                  blurRadius: 4,
                  offset: Offset(0, 0),
                  color: Colors.black38
              )
            ]
        ),*/
        height: 10.0.h,
        width: 20.w,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: InkWell(
            onTap: () {
              setState(() {
                updateTabSelection(2);
              });
            },
            child: Container(
                /*    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        */ /*  topLeft: Radius.circular(100.0),
                  topRight: Radius.circular(100.0),*/ /*
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3,
                            blurRadius: 4,
                            offset: Offset(2, 2),
                            color: Colors.black38
                        )
                      ]
                  ),*/

                child: new Image.asset(
              "assets/images/wallet.png",
              width: 7.w,
              color: currentIndex == 2
                  ? Colors.blue.shade900
                  : Colors.grey.shade400,
            )),
          ),
          shape: new BeveledRectangleBorder(
              borderRadius: new BorderRadius.circular(10.w)),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shape: CircularNotchedRectangle(),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.w),
                topRight: Radius.circular(4.w),
              ),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    spreadRadius: 3,
                    blurRadius: 0,
                    offset: Offset(0, 0),
                    color: Colors.black38)
              ]),
          height: 8.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          updateTabSelection(0);

                        });
                        if (currentIndex == 0) {
                          Navigator.push(
                              context,
                              PageTransition(
                                  child: FamilyCardscreen(),
                                  type: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 800)));
                        }
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/home.png",
                            width: 6.w,
                            color: currentIndex == 0
                                ? Colors.blue.shade300
                                : Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        child: Text(
                      "FAMCARD",
                      style: TextStyle(
                        color: currentIndex == 0
                            ? Colors.blue.shade300
                            : Colors.grey.shade400,
                        fontFamily: 'Oxygen',
                        fontSize: 6.5.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ],
                ),
              ),
              // button 2
              Container(
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          updateTabSelection(1);
                        });
                      },
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            "assets/images/rewards.png",
                            width: 6.w,
                            color: currentIndex == 1
                                ? Colors.blue.shade300
                                : Colors.grey.shade400,
                          ),
                        ),
                      ),
                    ),
                    Container(
                        child: Text(
                      "REWARDS",
                      style: TextStyle(
                        color: currentIndex == 1
                            ? Colors.blue.shade300
                            : Colors.grey.shade400,
                        fontFamily: 'Oxygen',
                        fontSize: 6.5.sp,
                        fontWeight: FontWeight.w900,
                      ),
                    )),
                  ],
                ),
              ),

              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        updateTabSelection(2);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          // boxShadow: [
                          //   BoxShadow(
                          //     color: Colors.grey.withOpacity(0.5),
                          //     spreadRadius: 5,
                          //     blurRadius: 7,
                          //   ),
                          // ],
                          ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/images/home.png",
                          width: 6.w,
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                    "WALLET",
                    style: TextStyle(
                      color: currentIndex == 2
                          ? Colors.blue.shade300
                          : Colors.grey.shade500,
                      fontFamily: 'Oxygen',
                      fontSize: 6.5.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                ],
              ),
              // button 3
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        updateTabSelection(3);
                      });
                    },
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: /*Image.asset("assets/images/click3.png",width: 22,color: currentIndex ==5
                          ? Colors.blue.shade900
                          : Colors.grey.shade400)*/

                            currentIndex == 3
                                ? new Image.asset(
                                    'assets/images/cardd.png',
                                    width: 6.w,
                                  )
                                : new Image.asset('assets/images/card.png',
                                    width: 6.w,
                                    color: currentIndex == 3
                                        ? Colors.blue.shade300
                                        : Colors.grey.shade400),
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                    "MY CARD",
                    style: TextStyle(
                        color: currentIndex == 3
                            ? Colors.blue.shade300
                            : Colors.grey.shade400,
                        fontFamily: 'Oxygen',
                        fontSize: 6.5.sp,
                        fontWeight: FontWeight.w900),
                  )),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        updateTabSelection(4);
                      });
                      // Navigator.push(
                      // context,
                      /* MaterialPageRoute(
                  builder: (context) => PermissionScreen()),*/
                      //  );
                    },
                    child: Container(
                      // height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: /*Image.asset("assets/images/click3.png",width: 22,color: currentIndex ==5
                          ? Colors.blue.shade900
                          : Colors.grey.shade400)*/

                            currentIndex == 4
                                ? new Image.asset(
                                    'assets/images/click21.png', width: 6.w,
                                    //color: currentIndex ==5
                                    /*   ? Colors.blue.shade900
        : Colors.grey.shade400*/
                                  )
                                : new Image.asset('assets/images/click3.png',
                                    width: 6.w,
                                    color: currentIndex == 4
                                        ? Colors.blue.shade300
                                        : Colors.grey.shade400),
                      ),
                    ),
                  ),
                  Container(
                      child: Text(
                    "APPLY",
                    style: TextStyle(
                      color: currentIndex == 4
                          ? Colors.blue.shade300
                          : Colors.grey.shade400,
                      fontFamily: 'Oxygen',
                      fontSize: 6.5.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
