import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class StartButton extends StatelessWidget {
  const StartButton({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Stack(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      width: w * 0.82,
                                      height: h * 0.055,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.white
                                                    .withOpacity(0.8),
                                                spreadRadius: 0,
                                                blurRadius: 8)
                                          ]),
                                    ),
                                    Container(
                                      width: 85.w,
                                      height: 5.5.h,
                                      alignment: Alignment.center,
                                      margin: EdgeInsets.only(
                                          top: .6.h, left: 1.w),
                                      decoration: BoxDecoration(
                                        color: Color(0xff459AFA),
                                        borderRadius:
                                            BorderRadius.circular(10),
                                      ),
                                      child: Text(
                                        'Continue',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Mukta',
                                            fontSize: 12.sp,
                                            decoration: TextDecoration.none,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                );
  }
}