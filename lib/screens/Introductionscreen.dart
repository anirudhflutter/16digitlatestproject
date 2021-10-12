import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'MobileNumberScreen.dart';
import 'widgets/start_button.dart';
import 'package:sizer/sizer.dart';

int? initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = await prefs.getInt("initScreen");
  await prefs.setInt("initScreen", 1);
  print('initScreen ${initScreen}');
  runApp(IntroductionScreen());
}

class IntroductionScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: initScreen == 0 || initScreen == null ? "first" : "/",
      routes: {
        '/': (context) =>
            MyHomePage(
              title: "demo",
            ),
        "first": (context) => OnboardingScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Widget> pages = [
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage(
              'assets/images/BG.png',
            ),
            height: 18.h,
          ),
        ),
        SizedBox(height: 4.h),
        Center(
          child: Image(
            image: AssetImage(
              'assets/images/intro1.png',
            ),
            height: 30.h,
          ),
        ),
        SizedBox(height: 4.0.h),
        Text(
          'Manage all your credit card at one\nplace, earn rewards for paying bills\non time',
          style: TextStyle(
            fontFamily: 'Mukta',
            fontSize: 17.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(
              'assets/images/BG.png',
            ),
            height: 18.h,
          ),
        ),
        SizedBox(height: 4.0.h),
        Center(
          child: Image(
            image: AssetImage(
              'assets/images/intro2.png',
            ),
            height: 30.7.h,
          ),
        ),
        SizedBox(height: 4.0.h),
        Text('Debit card for teens,managed by\nparents',
            style: TextStyle(
              fontFamily: 'Mukta',
              fontSize: 17.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Image(
            image: AssetImage(
              'assets/images/BG.png',
            ),
            height: 18.0.h,
          ),
        ),
        SizedBox(height: 5.0.h),
        Center(
          child: Image(
            image: AssetImage(
              'assets/images/intro3.png',
            ),
            height: 30.h,
          ),
        ),
        SizedBox(height: 4.0.h),
        Text(
            'Pay/receive money using UPI.\nSend money to UPI directly from\nbank',
            style: TextStyle(
              fontFamily: 'Mukta',
              fontSize: 17.sp,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  //colors: [Colors.green, Colors.blue]
                  colors: <Color>[
                    Color(0xff01142b),
                    Color(0xff00265d),
                  ],
                  /* /* stops: [0.1, 0.4, 0.7, 0.9],
                colors: [Colors.green, Colors.blue]*/*/
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: ListView(
                padding: EdgeInsets.only(top: 4.h),
                children: <Widget>[
              Container(
              alignment: Alignment.centerRight,
                child: TextButton(
                  ///onPressed: () => print('Skip'),
                  onPressed: () =>
                      Navigator.pushReplacement(
                        context,
                        PageTransition(child: MobileNumberScreen(),
                            type: PageTransitionType.fade,
                            duration: Duration(seconds: 1),
                            reverseDuration: (Duration(seconds: 1)))),
                        child: Text(
                          'Skip',
                          style: TextStyle(
                              fontFamily: 'Mukta',
                              fontSize: 12.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                ),
                AnimatedSwitcher(
                  duration: Duration(milliseconds: 1500),
                  child: Container(
                      key: ValueKey(pages[_currentPage]),
                      child: pages[_currentPage]),
                ),
                  SizedBox(height: 7.h,),
                  Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          if (_currentPage != pages.length - 1) {
                            _currentPage++;
                          } else {
                            Navigator.pushReplacement(
                                context,
                                PageTransition(
                                    child: MobileNumberScreen(),
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 900),
                                    reverseDuration: (Duration(
                                        milliseconds: 900))));
                          }
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          StartButton(),
                          /*  SizedBox(width: 8.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 20.0,
                          ),*/
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
int? initScreen;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  initScreen = (await prefs.getInt("initScreen"));
  await prefs.setInt("initScreen", 1);
  print('initScreen ${initScreen}');
  runApp(IntroductionScreen());
}

class IntroductionScreen extends StatelessWidget {
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
}


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/images/intro.png"),
                fit: BoxFit.fill,
              )
          ),
          */
/*   decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.1, 0.4, 0.7, 0.9],
              colors: [
                Color(0xFF3594DD),
                Color(0xFF4563DB),
                Color(0xFF5036D5),
                Color(0xFF5B16D0),
              ],
            ),
          ),*/ /*

          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: FlatButton(
                    onPressed: () => print('Skip'),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 600,
                  child: PageView(
                    physics: ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: [
                                  Container(
                                    child: Image(
                                      image: AssetImage(
                                        'assets/images/intro.png',
                                      ),
                                      height: 300.0,
                                      width: 300.0,
                                    ),
                                  ),Image(
                                    image: AssetImage(
                                      'assets/images/lorem_Ipsum.png',
                                    ),
                                    height: 300.0,
                                    width: 300.0,
                                  ),
                                ],
                              ),

                            ),
                            SizedBox(height: 30.0),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Manage all your credit card at one\nplace,earn rewards for paying bills\non time',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  color: Colors.
                                  white,
                                  fontWeight: FontWeight.normal,
                                ),
                                //style: kTitleStyle,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/lorem_Ipsum.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              alignment: Alignment.center ,
                              child: Text(
                                'Debit card for teens,managed by\nparents',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  color: Colors.
                                  white,
                                  fontWeight: FontWeight.normal,
                                ),

                              ),
                            ),

                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(40.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Center(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/lorem_Ipsum.png',
                                ),
                                height: 300.0,
                                width: 300.0,
                              ),
                            ),
                            SizedBox(height: 30.0),
                            Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Pay/receive money using UPI.\nSend money to UPI directly from\nbank',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 20,
                                  color: Colors.
                                  white,
                                  fontWeight: FontWeight.normal,
                                ),
                                //style: kTitleStyle,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1
                    ? Expanded(
                  child: Align(
                    alignment: FractionalOffset.bottomRight,
                    child: FlatButton(
                      onPressed: () {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30.0,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
                    : Text(''),
              ],
            ),
          ),
        ),
      ),
      bottomSheet: _currentPage == _numPages - 1
          ? Container(
        height: 50.0,
        width: double.infinity,
        color: Colors.white,
        child: GestureDetector(
          onTap: () => print('Get Started'),
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Color(0xFF5B16D0),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      )
          : Text(''),
    );
  }
}*/
