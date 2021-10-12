import 'dart:async';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:pixel_perfect/pixel_perfect.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Introductionscreen.dart';
import 'MobileNumberScreen.dart';
import 'widgets/start_button.dart';
import 'package:sizer/sizer.dart';

/*int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = (await prefs.getInt("initScreen"));
  await prefs.setInt("initScreen", 1);
  print('initScreen ${initScreen}');
  runApp(MyApp());
}*/

/*class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
      routes: {
        '/': (context) => MobileNumberScreen(),
        "first": (context) => OnboardingScreen(),
      },
    );
  }
}*/
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashState();
  }
}

class SplashState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  bool timerEnd = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);

    return new Timer(duration, () {
      setState(() {
        timerEnd = true;
      });
    });
  }

  // route() {
  //
  //   Navigator.pushReplacement(context, MaterialPageRoute(
  //       builder: (context) => IntroductionScreen()
  //  )
  //  );
  // }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          //colors: [Colors.green, Colors.blue]
          colors: <Color>[
            Color(0xff01142b),
            Color(0xff002860),
          ],
        )),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 21.w, right: 21.w,bottom: 5.h),
              child: Image.asset(
                "assets/images/LOGO.png",

              ),
            ),
            //Padding(padding: EdgeInsets.only(top: 20.0)),
            /* Text(
                "Splash Screen",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white
                ),
              ),*/

            Positioned(
              top: 60.h,
              left: 45.w,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: timerEnd ? 0 : 1,
                child: CircularProgressIndicator(
                  backgroundColor: Colors.white,
                  strokeWidth: 2,
                ),
              ),
            ),

            AnimatedOpacity(
              opacity: timerEnd ? 1 : 0,
              duration: Duration(milliseconds: 800),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: InkWell(
                  onTap: () => Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: IntroductionScreen(),
                          type: PageTransitionType.fade,duration: Duration(seconds: 1))),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 4.h),
                    child: StartButton(),
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
