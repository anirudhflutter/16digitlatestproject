import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:page_transition/page_transition.dart';
import '../Track%20screen/Track%20Status.dart';
import '../Wallet%20screen/PersonalLoanscreen.dart';
import 'package:sizer/sizer.dart';

class ApplyTabscreen extends StatefulWidget {
  @override
  _ApplyTabscreenState createState() => _ApplyTabscreenState();
}

class _ApplyTabscreenState extends State<ApplyTabscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0ecf0f2),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 1.h, 0, 20.h),
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 2.0,
          staggeredTiles: [
            StaggeredTile.count(1, 0.22),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
            StaggeredTile.count(1, 1),
          ],
          children: <Widget>[
            Trackstatus("Track Status"),
            myPhotoList('assets/images/piggi2.png', 'Micro Loan\nunder(50k)',
                Color(0xffd9e0d0), Color(0xff9aa48a)),
            myPhotoList('assets/images/crad.png', 'Credit cards',
                Color(0xfffff9f9), Color(0xfffecbca)),
            myPhotoList('assets/images/cash.png', 'Transfer\nPersonal Loan',
                Color(0xff8c9898), Color(0xff354544)),
            myPhotoList('assets/images/persnoal.png', 'Personal  Loan',
                Color(0xff717699), Color(0xff3f4157)),
            myPhotoList('assets/images/home-trn.png', 'Transfer\nHome Loan',
                Color(0xffeee8b6), Color(0xffd4cd85)),
            myPhotoList('assets/images/homeloan.png', 'Home Loan',
                Color(0xffc8e5d1), Color(0xff67b27b)),
            myPhotoList('assets/images/bag2.png', 'Business Loan',
                Color(0xffe5f2f1), Color(0xff9cdcde)),
            myPhotoList('assets/images/piggi2.png', 'Micro Loan\nunder(50k)',
                Color(0xffd9e0d0), Color(0xff9aa48a)),
            myPhotoList('assets/images/crad.png', 'Credit cards',
                Color(0xfffff9f9), Color(0xfffecbca)),
            myPhotoList('assets/images/cash.png', 'Transfer\nPersonal Loan',
                Color(0xff8c9898), Color(0xff354544)),
            myPhotoList('assets/images/persnoal.png', 'Personal  Loan',
                Color(0xff717699), Color(0xff3f4157)),
            myPhotoList('assets/images/home-trn.png', 'Transfer\nHome Loan',
                Color(0xffeee8b6), Color(0xffd4cd85)),
            myPhotoList('assets/images/homeloan.png', 'Home Loan',
                Color(0xffc8e5d1), Color(0xff67b27b)),
            myPhotoList('assets/images/bag2.png', 'Business Loan',
                Color(0xffe5f2f1), Color(0xff9cdcde)),
          ],
        ),
      ),
    );
  }

  Widget Trackstatus(String trackstatus) {
    return GestureDetector(
      onTap: () {
        print("Click on Row: >>>>>>>>>>");
        Navigator.push(
            context,
            PageTransition(
                child: TrackStatus(),
                type: PageTransitionType.fade,
                duration: Duration(milliseconds: 800),
                reverseDuration: Duration(milliseconds: 800)));
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            new BoxShadow(
              color: Color(0xff0052ca),
            ),
          ],
        ),
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
              alignment: Alignment.center,
              child: Text(
                trackstatus,
                style: TextStyle(color: Colors.white, fontSize: 12.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 2),
              child: Image.asset(
                'assets/images/status.png',
                width: 20,
                height: 20,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget myPhotoList(
      String MyImages, String name, Color startColor, Color endColor) {
    return GestureDetector(
      onTap: () {
        print("Click on Row: >>>>>>>>>>");
        Navigator.push(
            context,
            PageTransition(
                child: PersonalLoanscreen(),
                type: PageTransitionType.fade,
                curve: Curves.slowMiddle,
                duration: Duration(milliseconds: 900),
                reverseDuration: Duration(milliseconds: 900)));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.w, vertical: 1.h),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.8),
              offset: Offset(-6.0, -6.0),
              blurRadius: 8,
            ),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
        ),
        width: 120,
        child: Neumorphic(
          style: NeumorphicStyle(
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
              shape: NeumorphicShape.concave,
              depth: 2,
              intensity: 10,
              shadowLightColor: Colors.white,
              lightSource: LightSource.topLeft,
              color: Colors.white),
          child: Column(
            children: [
              Container(
                //width: 110,
                width: double.infinity,
                height: 14.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8)),
                  gradient: LinearGradient(colors: [
                    startColor,
                    endColor,
                  ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                  /*  boxShadow: [
                    BoxShadow(
                      color: endColor,
                      blurRadius: 12,
                      offset: Offset(0, 6),
                    ),
                  ],*/
                ),

                child: Padding(
                  padding: EdgeInsets.all(5.w),
                  child: Container(
                    child: Image.asset(
                      MyImages,
                      height: 2.h,
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8)),
                  boxShadow: [
                    new BoxShadow(
                      color: Colors.transparent,
                    ),
                  ],
                ),
                child: Container(
                  height: 6.h,
                  //color: Colors.red,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                        bottomRight: Radius.circular(8)),
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.transparent,
                      ),
                    ],
                  ),

                  child: Text(
                    name,
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontFamily: 'Oxygen',
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
             // width: 110,
              //height: 200,
            //  margin: EdgeInsets.only(bottom: 40),
              width: double.infinity,
              child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  childAspectRatio: (4 / 2.4),
                  //crossAxisSpacing: 0.0,
                  mainAxisSpacing: 0,
                  physics: NeverScrollableScrollPhysics(),
                  children: List.generate(choices.length, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index]),
                    );
                  }
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Choice {
  const Choice({required this.image, required this.name, });

  final String image;
  final String name;

}

const List<Choice> choices = const <Choice>[

  const Choice(image:('assets/images/esst.png'),name:("Credit Cards")),
  const Choice(image:('assets/images/grocerise.png'),name:("Micro Loan")),
  const Choice(image:('assets/images/health.png'),name:("Personal Loan")),
  const Choice(image:('assets/images/esst.png'),name:("Transfer Personal loan")),
  const Choice(image:('assets/images/esst.png'),name:("Home Loan")),
  const Choice(image:('assets/images/esst.png'),name:("Transfer Home Loan")),
  const Choice(image:('assets/images/esst.png'),name:("Business Loan")),

];

class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.choice}) : super(key: key);

  final Choice choice;

  @override
  Widget build(BuildContext context) {

    return  Container(
     // width: 110,
     // height: 140,
      margin:EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(color: Colors.white,),
        ],
      ),
      //color: Colors.red,
      child: Neumorphic(
        //margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
        style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            intensity: 10.0,
            lightSource: LightSource.topLeft,
            color: Colors.white
        ),
        child: Column(
          children: [
            Container(
              width: 110,
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: RandomColorModel().getColor(),
              ),

              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(

                  child: Image.asset(choice.image,
                    //'assets/images/upcominng lectures.png',
                  ),
                ),
              ),
            ),
            Container(
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(color: Colors.white,),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.only(top:4.0,bottom: 4),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(choice.name,
                    style: TextStyle(color: Colors.blue,fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,fontSize: 10,),
                  ),
                ),
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
    return Color.fromARGB(random.nextInt(200), random.nextInt(300),
      random.nextInt(400), random.nextInt(200),);
  }
}*/
