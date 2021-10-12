import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SpendTabscreen extends StatefulWidget {
  @override
  _SpendTabscreenPageState createState() => _SpendTabscreenPageState();
}

class _SpendTabscreenPageState extends State<SpendTabscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  //color: Color(0xff0d1d8e8),
                  width: 25.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xff0d1d8e8),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(4.w),
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          new BoxShadow(color: Color(0xff0dce0e9)),
                        ],
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(2.w),
                        child: Container(
                          alignment: Alignment.center,
                          height: 5.h,
                          width: 20.w,
                          child: Text("₹",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Mukta',
                                  fontSize: 30.sp,
                                  fontWeight: FontWeight.w600)),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Text("No Payments",
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Mukta',
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w600,
                    )),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 1.h),
                child: Container(
                  child: Text("There are no payments in this card",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Mukta',
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
