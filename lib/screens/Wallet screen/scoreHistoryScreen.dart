import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sizer/sizer.dart';

class ScoreHistoryScreen extends StatelessWidget {
  const ScoreHistoryScreen({Key? key}) : super(key: key);
  static const gradientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(7.w, 7.h, 7.w, 0),
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
                    child: Neumorphic(
                        style: NeumorphicStyle(
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(60)),
                            shape: NeumorphicShape.flat,
                            depth: 2,
                            intensity: 10,
                            lightSource: LightSource.topLeft,
                            color: Colors.white),
                        child: Icon(
                          Icons.arrow_back_rounded,
                        )),
                    width: 10.w,
                    height: 5.h,
                  ),
                ),
              ],
            ),
            Container(
              child: Text('Score History',
                  style: TextStyle(
                      color: Colors.black54,
                      fontFamily: 'Mukta',
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w900)),
            ),
            Container(
              height: 35.h,
              child: Stack(
                children: [
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                    //width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.transparent,
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/meter (1).png', height: 25.h)
                      ],
                    ),
                  ),
                  Positioned(
                      top: 8.h,
                      left: 16.w,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: Colors.white,
                        child: Container(
                          width: 30.w,
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black12, width: 2),
                              color: Colors.white,
                              shape: BoxShape.circle),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '740',
                                style: TextStyle(
                                    fontSize: 22.sp,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 1.h,
                              ),
                              Text('Average Score',
                                  style: TextStyle(
                                      fontSize: 8.sp,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      )),
                  Positioned(
                    top: 28.h,
                    left: 15.w,
                    child: Text(
                      '0',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: 28.h,
                    left: 55.w,
                    child: Text(
                      '900',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Text(
                'You\'re in a good shape. Better score \n can help you credit at attractive interest rates',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 10.sp,
                    height: 2,
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 60.w,
              margin: EdgeInsets.symmetric(horizontal: 0.w, vertical: 2.h),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 1.h,
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        FontAwesomeIcons.longArrowAltLeft,
                        color: Color(0xffF23069),
                        size: 20.sp,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontSize: 17.sp,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Last week',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 12.w,
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      bottom: 1.h,
                    ),
                    child: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(
                        FontAwesomeIcons.longArrowAltLeft,
                        color: Color(0xffF23069),
                        size: 20.sp,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '12',
                        style: TextStyle(
                            fontSize: 17.sp,
                            height: 1.5,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Last month',
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: Colors.black45,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              indent: 3.w,
              endIndent: 3.w,
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 3.w),
              child: Text(
                'Need Improvement',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 12.sp,
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
                width: 90.w,
                decoration: BoxDecoration(
                    color: Color(0xffE6E8F6),
                    borderRadius: BorderRadius.circular(2.w),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          offset: Offset(2, 7),
                          blurRadius: 10)
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: Icon(
                        Icons.emoji_emotions_outlined,
                        size: 25.sp,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'Credit Card Use',
                        style: TextStyle(
                            height: 0.3.h,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'How much credit you\'re compared to your local limit',
                        style: TextStyle(height: 1.5, color: Colors.black87),
                      ),
                    ),
                    Divider(
                      thickness: 1,
                      indent: 3.w,
                      endIndent: 3.w,
                    ),
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 1.h),
                      child: Text(
                        '35%',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
              child: Text(
                'Credit History',
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 13.sp,
                    height: 2,
                    color: Colors.black54,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Divider(
              thickness: 1,
              indent: 3.w,
              endIndent: 3.w,
            ),
            Container(
              width: 95.w,
              height: 20.h,
              child: LineChart(LineChartData(
                gridData: FlGridData(
                  show: true,
                  drawVerticalLine: true,
                  getDrawingHorizontalLine: (value) {
                    return FlLine(
                      color: const Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                  getDrawingVerticalLine: (value) {
                    return FlLine(
                      color: const Color(0xff37434d),
                      strokeWidth: 1,
                    );
                  },
                ),
                titlesData: FlTitlesData(
                  show: true,
                  rightTitles: SideTitles(showTitles: false),
                  topTitles: SideTitles(showTitles: false),
                  bottomTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 22,
                    interval: 1,
                    getTextStyles: (context, value) => const TextStyle(
                        color: Color(0xff68737d),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 2:
                          return 'MAR';
                        case 5:
                          return 'JUN';
                        case 8:
                          return 'SEP';
                      }
                      return '';
                    },
                    margin: 8,
                  ),
                  leftTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    getTextStyles: (context, value) => const TextStyle(
                      color: Color(0xff67727d),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    getTitles: (value) {
                      switch (value.toInt()) {
                        case 1:
                          return '10k';
                        case 3:
                          return '30k';
                        case 5:
                          return '50k';
                      }
                      return '';
                    },
                    reservedSize: 32,
                    margin: 12,
                  ),
                ),
                borderData: FlBorderData(
                    show: true,
                    border:
                        Border.all(color: const Color(0xff37434d), width: 1)),
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                lineBarsData: [
                  LineChartBarData(
                    spots: [
                      FlSpot(0, 3),
                      FlSpot(2.6, 2),
                      FlSpot(4.9, 5),
                      FlSpot(6.8, 3.1),
                      FlSpot(8, 4),
                      FlSpot(9.5, 3),
                      FlSpot(11, 4),
                    ],
                    isCurved: true,
                    colors: gradientColors,
                    barWidth: 5,
                    isStrokeCapRound: true,
                    dotData: FlDotData(
                      show: false,
                    ),
                    belowBarData: BarAreaData(
                      show: true,
                      colors: gradientColors
                          .map((color) => color.withOpacity(0.3))
                          .toList(),
                    ),
                  ),
                ],
              )),
            )
          ],
        ),
      ),
    );
  }
}
