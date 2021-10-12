import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'util.dart';

class ProgressBar extends StatefulWidget {
  ProgressBar({Key? key}) : super(key: key);

  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(milliseconds: 8800),
      vsync: this,
    );
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBar(
      controller: animationController,
    );
  }
}

class AnimatedBar extends StatelessWidget {
  final dotSize = 20.0;
  //final dotOneColor,dotTwoColor,dotThreeColor;


  AnimatedBar({Key? key, required this.controller})
      : dotOneColor = ColorTween(
    begin: Colors.blueGrey,
    end: Colors.blue,
  ).animate(
    CurvedAnimation(
      parent: controller,
      curve: Interval(
        0.000,
        0.100,
        curve: Curves.linear,
      ),
    ),
  ),
        textOneStyle = TextStyleTween(
          begin: TextStyle(fontWeight: FontWeight.w400, color: TrackstatusColors.Grey,fontSize: 12),
          end: TextStyle(fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 12),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.000,
              0.100,
              curve: Curves.linear,
            ),
          ),
        ),
        progressBarOne = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.100, 0.450),
          ),
        ),
        dotTwoColor = ColorTween(
          begin: TrackstatusColors.Grey,
          end: TrackstatusColors.Grey,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.450,
              0.550,
              curve: Curves.linear,
            ),
          ),
        ),
        textTwoStyle = TextStyleTween(
          begin: TextStyle(fontWeight: FontWeight.w400, color: TrackstatusColors.Grey, fontSize: 12),
          end: TextStyle(fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 12),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.450,
              0.550,
              curve: Curves.linear,
            ),
          ),
        ),
        progressBarTwo = Tween(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.550, 0.900),
          ),
        ),
        dotThreeColor = ColorTween(
          begin: TrackstatusColors.Grey,
          end: TrackstatusColors.Grey,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.900,
              1.000,
              curve: Curves.linear,
            ),
          ),
        ),
        textThreeStyle = TextStyleTween(
          begin: TextStyle(fontWeight: FontWeight.w400, color: TrackstatusColors.Grey, fontSize: 12),
          end: TextStyle(fontWeight: FontWeight.w600, color: Colors.black87, fontSize: 12),
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.900,
              1.000,
              curve: Curves.linear,
            ),
          ),
        ),
        super(key: key);

  final AnimationController controller;
  final Animation<Color?> dotOneColor;
  final Animation<TextStyle> textOneStyle;
  final Animation<double> progressBarOne;
  final Animation<Color?> dotTwoColor;
  final Animation<TextStyle> textTwoStyle;
  final Animation<double> progressBarTwo;
  final Animation<Color?> dotThreeColor;
  final Animation<TextStyle> textThreeStyle;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AnimatedBuilder(
        animation: controller,
        builder: (BuildContext context, Widget? Widget) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width / 1.3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Applied',
                    style: textOneStyle.value,
                  ),
                  Text(
                    'Response\nReceived',
                    style: textTwoStyle.value,
                  ),
                  Text(
                    'Final\nStatus',
                    style: textThreeStyle.value,
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.3,
              margin: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Text('${(controller.value * 100.0).toStringAsFixed(1)}%'),
                  Container(
                    width: dotSize,
                    height: dotSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(dotSize / 2),
                        color: dotOneColor.value),
                  ),
                  SizedBox(width: 0),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 2,
                      child: LinearProgressIndicator(
                        backgroundColor: TrackstatusColors.Grey,
                        value: progressBarOne.value,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(TrackstatusColors.blue),
                      ),
                    ),
                  ),
                  SizedBox(width: 0),
                  Container(
                    width: dotSize,
                    height: dotSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(dotSize / 2),
                        color: dotTwoColor.value),
                  ),
                  SizedBox(width: 0),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 2,
                      child: LinearProgressIndicator(
                        backgroundColor: TrackstatusColors.Grey,
                        value: progressBarTwo.value,
                        valueColor:
                        AlwaysStoppedAnimation<Color>(TrackstatusColors.Grey),
                      ),
                    ),
                  ),
                  SizedBox(width: 0),
                  Container(
                    width: dotSize,
                    height: dotSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(dotSize / 2),
                        color: dotThreeColor.value),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}