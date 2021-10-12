import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

/*
void main() => runApp(MyApp2());

bool _value = false;
class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Circle CheckBox"),
      ),
      body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                _value = !_value;
              });
            },
            child: Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: _value
                    ? Icon(
                  Icons.check,
                  size: 30.0,
                  color: Colors.white,
                )
                    : Icon(
                  Icons.check_box_outline_blank,
                  size: 30.0,
                  color: Colors.blue,
                ),
              ),
            ),
          )),
    );
}*/


/*class SimpleTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.white, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("Smiple Tab Demo"),
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                text: "First",
              ),
              new Tab(
                text: "Second",
              ),
              new Tab(
                text: "Third",
              ),
            ],
          ),
        ),
        body: new TabBarView(
          children: <Widget>[
            new Container(
              color: Colors.deepOrangeAccent,
              child: new Center(
                child: new Text(
                  "First",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.blueGrey,
              child: new Center(
                child: new Text(
                  "Second",
                  style: textStyle(),
                ),
              ),
            ),
            new Container(
              color: Colors.teal,
              child: new Center(
                child: new Text(
                  "Third",
                  style: textStyle(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
/*class AnimatedXYZ extends StatefulWidget {
  @override
  _AnimatedXYZState createState() => _AnimatedXYZState();
}

// building the container class
class _AnimatedXYZState extends State<AnimatedXYZ> {
  bool _toggle = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'AnimatedContainer',
                style: TextStyle(fontSize: 20),
              ),
            ),

            // using the AnimatedContainer widget
            AnimatedContainer(
              decoration: BoxDecoration(
                color: _toggle == true
                    ? Colors.blueAccent
                    : Colors.deepPurpleAccent,
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              curve: Curves.easeInOutBack,
              duration: Duration(seconds: 1),
              height: _toggle == true ? 100 : 400,
              width: _toggle == true ? 100 : 200,
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  _toggle = !_toggle;
                });
              },
              child: Text('Animate'),
            )
          ],
        ),
      ),
    );
  }
}*/
/*void main() => runApp(new MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(title: 'Popular'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8"
  ];

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final headerList = new ListView.builder(
      itemBuilder: (context, index) {
        EdgeInsets padding = index == 0?const EdgeInsets.only(
            left: 20.0, right: 10.0, top: 4.0, bottom: 30.0):const EdgeInsets.only(
            left: 10.0, right: 10.0, top: 4.0, bottom: 30.0);

        return new Padding(
          padding: padding,
          child: new InkWell(
            onTap: () {
              print('Card selected');
            },
            child: new Container(
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.circular(10.0),
                color: Colors.lightGreen,
                boxShadow: [
                  new BoxShadow(

                      color: Colors.black.withAlpha(1000),
                      offset: const Offset(3.0, 10.0),
                      blurRadius: 15.0)
                ],
                image: new DecorationImage(
                  image: new ExactAssetImage(
                      'assets/img_${index%items.length}.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
              //                                    height: 200.0,
              width: 200.0,
              child: new Stack(
                children: <Widget>[
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: new Container(
                        decoration: new BoxDecoration(
                            color: const Color(0xFF273A48),
                            borderRadius: new BorderRadius.only(
                                bottomLeft: new Radius.circular(10.0),
                                bottomRight: new Radius.circular(10.0))),
                        height: 30.0,
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Text(
                              '${items[index%items.length]}',
                              style: new TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ),
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
    );

    final body = new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){})
        ],
      ),
      backgroundColor: Colors.transparent,
      body: new Container(
        child: new Stack(
          children: <Widget>[
            new Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  new Align(
                    alignment: Alignment.centerLeft,
                    child: new Padding(
                        padding: new EdgeInsets.only(left: 8.0),
                        child: new Text(
                          'Recent Items',
                          style: new TextStyle(color: Colors.white70),
                        )),
                  ),
                  new Container(
                      height: 300.0, width: _width, child: headerList),
                  new Expanded(child:
                  ListView.builder(itemBuilder: (context, index) {
                    return new ListTile(
                      title: new Column(
                        children: <Widget>[
                          new Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Container(
                                height: 72.0,
                                width: 72.0,
                                decoration: new BoxDecoration(
                                    color: Colors.lightGreen,
                                    boxShadow: [
                                      new BoxShadow(
                                          color:
                                          Colors.black.withAlpha(70),
                                          offset: const Offset(2.0, 2.0),
                                          blurRadius: 2.0)
                                    ],
                                    borderRadius: new BorderRadius.all(
                                        new Radius.circular(12.0)),
                                    image: new DecorationImage(
                                      image: new ExactAssetImage(
                                        'assets/img_${index%items.length}.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              new SizedBox(
                                width: 8.0,
                              ),
                              new Expanded(
                                  child: new Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text(
                                        'My item header',
                                        style: new TextStyle(
                                            fontSize: 14.0,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      new Text(
                                        'Item Subheader goes here\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry',
                                        style: new TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.black54,
                                            fontWeight: FontWeight.normal),
                                      )
                                    ],
                                  )),
                              new Icon(
                                Icons.shopping_cart,
                                color: const Color(0xFF273A48),
                              )
                            ],
                          ),
                          new Divider(),
                        ],
                      ),
                    );
                  }))
                ],
              ),
            ),
          ],
        ),
      ),
    );

    return new Container(
      decoration: new BoxDecoration(
        color: const Color(0xFF273A48),
      ),
      child: new Stack(
        children: <Widget>[
          new CustomPaint(
            size: new Size(_width, _height),
           // painter: new Background(),
          ),
          body,
        ],
      ),
    );
  }
}*/

/*void main() {
  runApp(Testscreen());
}
class Testscreen extends StatefulWidget {
  const Testscreen({Key? key}) : super(key: key);

  @override
  _TestscreenState createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            builder: (context) => Container(
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(25.0),
                  topRight: const Radius.circular(25.0),
                ),
              ),
              child: Center(
                child: Text("Modal content goes here"),
              ),
            ),
          );
        },

          child: Container(
            margin:const EdgeInsets.only( left: 30,
              top: 20,
              right: 30,
              bottom: 20,),
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white.withOpacity(0.8),
                  offset: Offset(-6.0, -5.0),
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(6.0, 6.0),
                  blurRadius: 8.0,
                ),
              ],
              color:Color(0xff0129afa),
              borderRadius: BorderRadius.circular(8.0),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Continue',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ),
        ),
      ],
    );
  }
}*/




/*void main() {
  runApp(TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //color: Colors.red,
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.green,


       // height:50,
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                alignment: Alignment.topCenter,
                //height: double.infinity,
                width: double.infinity,
                //height: 700,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 1.25,
                decoration: BoxDecoration(
                  //  border: Border.all(color: Colors.black, width: 0),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(color: Colors.transparent,),
                    ],
                    color: Colors.transparent
                ),
                child: DefaultTabController(
                  length: 2,
                  //length: _myTabs.length,
                  initialIndex: 1,
                  child: Scaffold(
                    appBar: AppBar(
                      titleSpacing: 0,
                      automaticallyImplyLeading: false,
                      // Don't show the leading button
                      elevation: 0,
                      //this makes tab bar transparent
                      backgroundColor: Colors.red,
                     // backgroundColor: Color(0xff0ecf0f2),
                      //color:Color(0xff0ecf0f2),

                      bottom: PreferredSize(
                        preferredSize: Size.fromHeight(-30),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: TabBar(
                                indicatorColor: Colors.blue[800],
                                indicatorWeight: 2,
                                indicatorSize: TabBarIndicatorSize
                                    .label,
                                labelColor: Colors.blue[800],
                                unselectedLabelColor: Colors.grey,

                                tabs: [Text("Pre-Approved",
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),),

                                  Text("Apply", style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    body: TabBarView(
                      children: [
                        GeneralTabscreen(),
                        PersonalTabscreen(),
                      ],
                    ),
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TabBardemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/


/*class SixteenProfile extends StatefulWidget {
  @override
  SixteenProfilePageState createState() => SixteenProfilePageState();
}

class SixteenProfilePageState extends State<SixteenProfile> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              child: TabBar(
                unselectedLabelColor: Colors.blueAccent,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "General",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: Colors.grey.shade300, width: 1)),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Personal",
                          style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),


            Expanded(
              child: TabBarView(
                children:<Widget> [
                  Flexible(child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: SafeArea(
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Text(
                                "Information",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),
                  Flexible(child:Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: SafeArea(
                      child: Column(

                        children: [
                          Row(
                            children: [
                              Text(
                                "General",
                                style: TextStyle(
                                    letterSpacing: 1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blueAccent),
                              ),
                              Spacer(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}*/
/*
class CheckBoxListTileDemo extends StatefulWidget{
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: new Text(
          'CheckBox ListTile Demo',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: new ListView.builder(
          itemCount: checkBoxListTileModel.length,
          itemBuilder: (BuildContext context, int index) {
            return new Card(
              child: new Container(
                padding: new EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    new CheckboxListTile(
                        activeColor: Colors.pink[300],
                        dense: true,
                        //font change
                        title: new Text(
                          checkBoxListTileModel[index].title,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.5),
                        ),
                        value: checkBoxListTileModel[index].isCheck,
                        secondary: Container(
                          height: 50,
                          width: 50,
                          child: Image.asset(
                            checkBoxListTileModel[index].img,
                            fit: BoxFit.cover,
                          ),
                        ),
                        onChanged: (bool? val) {
                          itemChange(val!, index);
                        })
                  ],
                ),
              ),
            );
          }),
    );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
class CheckBoxListTileModel {
  int userId;
  String img;
  String title;
  bool isCheck;

  CheckBoxListTileModel({required this.userId, required this.img,
    required this.title, required this.isCheck});

  static List<CheckBoxListTileModel> getUsers() {
    return <CheckBoxListTileModel>[
      CheckBoxListTileModel(
          userId: 1,
          img: 'assets/images/android_img.png',
          title: "Android",
          isCheck: true),
      CheckBoxListTileModel(
          userId: 2,
          img: 'assets/images/flutter.jpeg',
          title: "Flutter",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 3,
          img: 'assets/images/ios_img.webp',
          title: "IOS",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 4,
          img: 'assets/images/php_img.png',
          title: "PHP",
          isCheck: false),
      CheckBoxListTileModel(
          userId: 5,
          img: 'assets/images/node_img.png',
          title: "Node",
          isCheck: false),
    ];
  }
}
*/


/*void main() => runApp(testscreen());
class testscreen extends StatelessWidget {
  const testscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Text("Weight Loss Workouts", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.lime[700], fontSize: 25),)),
            ),
            SizedBox(height: 20,),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GeneralTabscreen(),
                  ),
                );
              },
              child: Container(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfileScreen()),
                            );
                          },
                          child: Container(
                              margin:EdgeInsets.fromLTRB(30, 40, 20, 0),
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(60),
                                  color: Color(0xff002860),
                                  boxShadow: [
                                    BoxShadow(
                                        spreadRadius: 3,
                                        blurRadius: 10,
                                        offset: Offset(-1, -1),
                                        color: Colors.white
                                    )
                                  ]
                              ),
                              child: Image.asset('assets/images/profile.png',
                                width: 45,height: 45,)
                          ),
                        ), Container(
                          margin:EdgeInsets.fromLTRB(0, 40, 20, 0),
                          alignment: Alignment.centerLeft,
                          child: Text('Hi Kabir', style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold,fontSize: 16)),
                        ),
                      ],
                    ),
                   *//* makeItem(image: 'assets/images/dom4.jpg', title: 'Weight Loss Workout 1'),
                    makeItem(image: 'assets/images/weightloss.png', title: 'Weigth Loss Workout 2'),
                    makeItem(image: 'assets/images/dom4.jpg', title: 'Weight Loss Workout 3'),
                    makeItem(image: 'assets/images/weightloss.png', title: 'Weight Loss Workout 4'),*//*
                  ],
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}*/


/*
 class DobScreentest extends StatefulWidget {
   @override
   _DobScreenPageState createState() => _DobScreenPageState();
 }

 class _DobScreenPageState extends State<DobScreentest> {

   // var _selected ="";
   List<bool> checked = [];

   @override
   Widget build(BuildContext context) {
     return Scaffold(
         body: Container(
           decoration: BoxDecoration(
               gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomRight,
                 //colors: [Colors.green, Colors.blue]
                 colors: <Color>[
                   Color(0xff01142b),
                   Color(0xff002860),
                 ],
               )
           ), child: Column(
           //mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
             const SizedBox(
               height: 100,
             ),
             Container(
               alignment: Alignment.topLeft,
               margin: const EdgeInsets.only(left: 30.0, right: 30.0),
               child: Text(
                 'Date of birth', style: TextStyle(
                 fontFamily: 'Montserrat',
                 fontSize: 22,
                 color: Colors.
                 white,
                 fontWeight: FontWeight.normal,
               ), textAlign: TextAlign.left,
               ),
             ),
             Padding(padding: EdgeInsets.only(top: 20.0)),
             Container(
               margin: const EdgeInsets.only(left: 30.0, right: 30.0),

               child: Text(
                 'additional information help us fetch\naccurate credit reports',
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   fontSize: 14,
                   color: Colors.
                  grey,
                   fontWeight: FontWeight.normal,
                 ), //textAlign: TextAlign.left,
               ), alignment: Alignment.topLeft,
                              ), const SizedBox(
               height: 35,
             ), Container(
               margin: const EdgeInsets.only(left: 30.0, right: 80.0),

     child: TextFormField(
                 cursorColor: Colors.grey,
                 keyboardType: TextInputType.text,
                style: TextStyle(
                     color: Colors.grey
                ),
                 decoration: InputDecoration(
                   enabledBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey),
                   ),
                   border: UnderlineInputBorder(
                     borderSide: BorderSide(color: Colors.grey),
                   ),
                   contentPadding:
                   EdgeInsets.only(left: 0, bottom: 4, top: 4, right: 15),
                   hintText: "m m / d d / y y y y ",
                  hintStyle: TextStyle(
                     fontFamily: 'Montserrat',
                     fontSize: 20,
                     color: Colors.grey,
                     fontWeight: FontWeight.normal,
                   ),),
               ),
             ),

             const SizedBox(
               height: 30,
             ),
             Container(
               //height: 300,
              child:
               InkWell(onTap: () {
                 showGeneralDialog(
                   barrierLabel: "Label",
                   barrierDismissible: true,
                   barrierColor: Colors.black.withOpacity(0.5),
                   transitionDuration: Duration(milliseconds: 700),
                   context: context,
                  pageBuilder: (context, anim1, anim2) {
                     return Align(
                       alignment: Alignment.center,
                       child: Container(
                        height: 380,
                         //width: double.infinity,
                         //width: MediaQuery.of(context).size.width,
                         width: double.maxFinite,
                         child: Column(
                           children: [
                             Padding(
                                 padding: const EdgeInsets.only(
                                     top: 20.0, left: 20, right: 20),
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment
                                       .spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment
                                       .start,
                                   children: <Widget>[
                                     Text('Select child',
                                       style: TextStyle(
                                          color: Colors
                                              .black,
                                          fontStyle: FontStyle
                                              .normal,
                                          fontWeight: FontWeight
                                              .bold,
                                          fontSize: 20,
                                          decoration: TextDecoration
                                              .none),),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                                      //width: 50,
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                              10),
                                          color: Color(0xffd3dfeb),
                                          boxShadow: [
                                            BoxShadow(
                                                spreadRadius: 2,
                                                blurRadius: 15,
                                                offset: Offset(-5, -3),
                                                color: Colors.white
                                            )
                                          ]
                                      ),
                                      child: Text('Add Child', style: TextStyle(
                                          color: Colors.blue[800],
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10,
                                          decoration: TextDecoration
                                              .none),),
                                    ),

                                  ],
                                )
                            ), ordercardlisting(
                                context, setState),

                          ],
                        ),
                        margin: EdgeInsets.only(
                            bottom: 0, left: 0, right: 0),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.white.withOpacity(0.8),
                              offset: Offset(-6.0, -6.0),
                              blurRadius: 8,
                            ), BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: Offset(6.0, 6.0),
                              blurRadius: 8.0,
                            ),
                          ],
                          color: Color(0xff0ecf0f2),
                          //color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    );
                  },
                  transitionBuilder: (context, anim1, anim2, child) {
                    return SlideTransition(
                      position: Tween(begin: Offset(0, 1), end: Offset(0, 0))
                          .animate(anim1),

                      child: child,

                    );
                  },
                );
              },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30,
                    top: 20,
                    right: 30,
                    bottom: 20,),
                  height: 40,
                  width: 120,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        offset: Offset(-4.0, -3.0),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 8.0,
                      ),
                    ],
                    color: Color(0xff0129afa),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  //alignment: Alignment.center,
                  child: const Text(
                    'Proceed',
                    style: TextStyle(color: Colors.white, fontSize: 14.0),
                  ),
                ),
              ),
            ),

          ],
        ),
        )
    );
  }

  // ordercardlisting(context, StateSetter setState_) {
  // List<bool> checked = [];
  ordercardlisting(BuildContext context,
      StateSetter setState_) {
    List<bool> checked = [];
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
    return Material(
      color: Colors.transparent,
      // color:Color(0xffecf0f2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Container(
              color: Colors.transparent,
              // color:Color(0xffecf0f2),
              height: 300.0, // Change as per your requirement
              width: double.maxFinite, // Change as per your requirement
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: details.length,
                itemBuilder: (BuildContext context, int index) {
                  for (int i = 0; i < details.length; i++) {
                    checked.add(false);
                  }
                  return Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    decoration: BoxDecoration(
                        boxShadow: [
                           BoxShadow(
                             spreadRadius: 1,
                             color: Color(0xffecf0f2).withOpacity(0.8),
                             offset: Offset(-6.0, -6.0),
                             blurRadius: 8,
                           ),
                           BoxShadow(
                             spreadRadius: 1,
                             color: Colors.black.withOpacity(0.2),
                             offset: Offset(0.0, 0.0),
                             blurRadius: 1,
                           ),
                         ], borderRadius: BorderRadius.circular(8),
                         color: Color(0xffecf0f2)
                     ),
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
                           color: Color(0xffecf0f2)

                      ),
                       child: ListTile(
                         onTap: () {
                           setState_(() {
                             print(checked[index]); checked[index] = !checked[index];
                           });
                         },
                         leading: Neumorphic(
                           style: NeumorphicStyle(
                               depth: NeumorphicTheme.embossDepth(context),
                               boxShape: NeumorphicBoxShape.roundRect(
                                   BorderRadius
                                       .circular(40)),
                               intensity: 10.0,
                               lightSource: LightSource.topLeft,
                               //color: Colors.white
                               color: Color(0xffecf0f2)
                           ),
                           child: Padding(
                             padding: const EdgeInsets.all(6.0),
                             child: CircleAvatar(
                               backgroundColor: Colors.white10,
                               backgroundImage: AssetImage(
                                   (details[index]['image'])), // no matter how big it is, it won't overflow
                             ),
                           ),
                         ),
                         title: Text(details[index]['name'],),

                         subtitle: Text(details[index]['sub'],
                           style: TextStyle(
                               color: Colors.blue[800], fontSize: 12),),

                         trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               Icon(
                                 !checked[index] ? Icons.circle_outlined : Icons
                                     .check_circle, color: Colors.blue[800],),
                             ]),
                       ),
                     ),
                   );
                 },
               ),
             ),
           ),
         ],
       ),
     );
   }
 }

*/


/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  void showPopup() {
    showDialog(
      context: context,
      builder: (_) => PopUp(),
    );
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
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showPopup,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class PopUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => PopUpState();
}

class PopUpState extends State<PopUp> with TickerProviderStateMixin {
  late AnimationController controller;
  late double _bottom = 0, _fromTop = 300, _screenHeight, _containerHeight = 300;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: const Duration(milliseconds: 300), vsync: this)
      ..addListener(() {
        Timer.periodic(Duration(milliseconds: 15), (timer) {
          if (_bottom < _screenHeight - _fromTop - _containerHeight) {
            _bottom += 1;
            setState(() {});
          }
        });
      });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    _screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: _bottom,
            left: 0,
            right: 0,
            child: Container(height: _containerHeight, color: Colors.green),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}*/

/*void main()=> runApp(MySleekSliders());


class MySleekSliders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SleekSlider(),
    );
  }
}


class SleekSlider extends StatelessWidget {

  Widget slider = SleekCircularSlider(
    appearance: CircularSliderAppearance(),
    initialValue: 25,
    onChange: (double value){
      print(value);
    },
  );

  Widget slider1 = SleekCircularSlider(

    appearance: CircularSliderAppearance(
      //spinnerMode: true,

      customColors: CustomSliderColors(trackColor: Colors.blueGrey[200],progressBarColors:
      [Colors.green, Colors.red],shadowMaxOpacity: 100.0),
      infoProperties: InfoProperties(topLabelText:"Average Score",),
    ),
    initialValue: 70,
    min: 0,
    max: 100,

    onChange: (double value){
      print(value);
    },
  );

 */ /* Widget slider2 = SleekCircularSlider(
    appearance: CircularSliderAppearance(
      spinnerMode: true,
      size: 50.0,
      customWidths: CustomSliderWidths(trackWidth: 10.0,shadowWidth: 5.0),
    ),
    initialValue: 90,
    onChange: (double value){
      print(value);
    },
  );*/ /*

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sleek Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            slider,
            SizedBox(height: 5),
            slider1,
            SizedBox(height: 5,),
            //slider2

          ],
        ),
      ),
    );
  }
}*/

/*class StepperDemo extends StatefulWidget {
  StepperDemo() : super();

  final String title = "Stepper Demo";

  @override
  StepperDemoState createState() => StepperDemoState();
}

class StepperDemoState extends State<StepperDemo> {
  //
  int current_step = 0;
  List<Step> steps = [
    Step(
      title: Text('Applied'),
      content: Text('Hello!'),
      isActive: true,
    ),
    Step(
      title: Text('Response\nReceived'),
      content: Text('World!'),
      isActive: true,
    ),
    Step(
      title: Text('Final\nStatus'),
      content: Text('Hello World!'),
      state: StepState.complete,
      isActive: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Simple Stepper Demo"),
      ),
      // Body
      body: Container(
        child: Stepper(
          currentStep: this.current_step,
          steps: steps,
          type: StepperType.horizontal,
          onStepTapped: (step) {
            setState(() {
              current_step = step;
            });
          },
          onStepContinue: () {
            setState(() {
              if (current_step < steps.length - 1) {
                current_step = current_step + 1;
              } else {
                current_step = 0;
              }
            });
          },
          onStepCancel: () {
            setState(() {
              if (current_step > 0) {
                current_step = current_step - 1;
              } else {
                current_step = 0;
              }
            });
          },
        ),
      ),
    );
  }
}*/

/*class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // The containers in the background
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .45,
              color: Colors.blue,
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .55,
              color: Colors.white,
            )
          ],
        ),
        // The card widget with top padding,
        // incase if you wanted bottom padding to work,
        // set the `alignment` of container to Alignment.bottomCenter
        new Container(
          alignment: Alignment.topCenter,
         color: Colors.transparent,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .38,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 150.0,

            width: MediaQuery.of(context).size.width,
            child: new Card(
           //  color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }
}*/
/*void main() {
  runApp(CheckBoxListTileDemo());
}
class CheckBoxListTileDemo extends StatefulWidget {
  @override
  CheckBoxListTileDemoState createState() => new CheckBoxListTileDemoState();
}

class CheckBoxListTileDemoState extends State<CheckBoxListTileDemo> {
  List<CheckBoxListTileModel> checkBoxListTileModel =
  CheckBoxListTileModel.getUsers();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: Container(
        child: Column(
          children: [
            Dialog(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                elevation: 16,
                child: SingleChildScrollView(
                  child: Container(
                    height: 300,
                    width: double.maxFinite,
                    //width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                  child: Text('Select child', style: TextStyle(color: Colors.black,fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.normal,fontSize: 22),)),
                              InkWell(child: Container(
                                decoration: BoxDecoration(
                                    borderRadius:BorderRadius.circular(10),
                                    color: Color(0xff0159de),
                                    boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 2,
                                          blurRadius: 15,
                                          offset: Offset(-5, -3),
                                          color: Colors.white
                                      )
                                    ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Add Child',style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.bold,fontSize: 10)),
                                ),
                              ),onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Addchildscreen()),
                                );
                              }
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 230,
                          child: new ListView.builder(
                              itemCount: checkBoxListTileModel.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Neumorphic(
                                  margin: new EdgeInsets.only(left: 10.0,right: 10,top: 10),
                                  style: NeumorphicStyle(
                                      shape: NeumorphicShape.flat,
                                      depth: 2,
                                      intensity: 1,
                                      lightSource: LightSource.topLeft,
                                      color: Colors.white
                                  ),

                                  child: new Container(

                                    child: Column(
                                      children: <Widget>[
                                        new CheckboxListTile(
                                            activeColor: Colors.blue[800],
                                            dense: true,
                                            //font change
                                            title: new Text(
                                              checkBoxListTileModel[index].title,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 0.5),
                                            ),subtitle:new Text(
                                        checkBoxListTileModel[index].subtitle,
                                            style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                                                fontWeight: FontWeight.normal,fontSize: 12,letterSpacing: 0.5)),
                                            value: checkBoxListTileModel[index].isCheck,
                                            secondary: Container(
                                              height: 50,
                                              width: 50,
                                              child: Image.asset(
                                                checkBoxListTileModel[index].img,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            onChanged: (bool? val) {
                                              itemChange(val!, index);
                                            })
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    ),
                    ),
              )),
          ],
        ),
      ) );
  }

  void itemChange(bool val, int index) {
    setState(() {
      checkBoxListTileModel[index].isCheck = val;
    });
  }
}
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
}*/


/*class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

 final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class Exercise {
  String image;
  String name;
  String pocketmoney;

  Exercise({required this.image,required this.name, required this.pocketmoney });
}
class _MyHomePageState extends State<MyHomePage> {
  List<Exercise> exercises = [
    Exercise(image:'assets/images/selectchild.png',name: 'Karunnya chaudhary',pocketmoney:'pocket money'),
    Exercise(image:'assets/images/selectchild.png',name: 'Karunnya chaudhary',pocketmoney:'pocket money'),
    Exercise(image:'assets/images/selectchild.png',name: 'Karunnya chaudhary',pocketmoney:'pocket money'),
    Exercise(image:'assets/images/selectchild.png',name: 'Karunnya chaudhary',pocketmoney:'pocket money'),
    Exercise(image:'assets/images/selectchild.png',name: 'Karunnya chaudhary',pocketmoney:'pocket money'),


  ];
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return
      Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 16,
      child: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          //width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
           mainAxisSize: MainAxisSize.max,
            children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20,top: 20),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Text('Select child', style: TextStyle(color: Colors.black,fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,fontSize: 22),)),
                InkWell(child: Container(
                  decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(10),
                      color: Color(0xff0159de),
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 15,
                            offset: Offset(-5, -3),
                            color: Colors.white
                        )
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Add Child',style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,fontSize: 10)),
                  ),
                ),onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Addchildscreen()),
                  );
                }
                ),
              ],
            ),
          ),

        SizedBox(height: 10),
            //  Divider(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.35,
                ),
                child: ListView.builder(
                    //physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    shrinkWrap: false,
                    itemCount: exercises.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(8),
                        ), //BoxDecoration

                        */ /** CheckboxListTile Widget **/ /*
                        child: CheckboxListTile(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)),
                          title: Text(exercises[index].name,style: TextStyle(color: Colors.grey[800],fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,fontSize: 14)),
                          subtitle: Text(exercises[index].pocketmoney,style: TextStyle(color: Colors.blue[800],fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,fontSize: 12)),
                          secondary: Neumorphic(child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset(exercises[index].image,width: 22,height: 22,),
                          )),
                          autofocus: false,
                          //activeColor: Colors.amber,
                          //checkColor: Colors.white,
                          selected: _value,
                          value: _value,
                          onChanged: ( value) {
                            setState(() {
                              _value = value!;
                            });
                          },
                        ), //CheckboxListTile
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/

/*
class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:  Center(
          child: InkWell(
            onTap: () {
              dialogContent(BuildContext context) {
                return Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(5.0),
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.close,
                          color: Colors.grey,
                          size: 20.0,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                        color: Colors.white,
                       */
/* child: CustomText(
                          fontSize: 16.0,
                          label: "Select your preferred language",
                          labelColor: AppColors.dialogTitleColor,
                          fontWeight: FontWeight.bold,
                        ),*/ /*

                      ),
                      Flexible(
                        child: new MyDialogContent(),//Custom ListView
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                     */
/*   child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(20.0),
                              bottomRight: Radius.circular(20.0),
                            ),
                          ),
                          onPressed: () {},
                          color: Colors.green,
                          textColor: Colors.black,
                        */ /*
*/
/*  child: CustomText(
                            label: "Submit",
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),*/ /*
*/
/*
                        ),*/ /*

                      ),
                    ],
                  ),
                );
              }
              },



            child: Text('Hello World'),

          ),
        ),
      ),
    );
  }
}






class MyDialogContent extends StatefulWidget {
  @override
  _MyDialogContentState createState() => new _MyDialogContentState();
}

class _MyDialogContentState extends State<MyDialogContent> {

  List<CustomRowModel> sampleData = <CustomRowModel>[];

  @override
  void initState() {
    super.initState();
    sampleData.add(CustomRowModel(title: "Marathi", selected: false));
    sampleData.add(CustomRowModel(title: "English", selected: false));
    sampleData.add(CustomRowModel(title: "Hindi", selected: false));
    sampleData.add(CustomRowModel(title: "Kannada", selected: false));
    sampleData.add(CustomRowModel(title: "Telugu", selected: false));
    sampleData.add(CustomRowModel(title: "Gujarathi", selected: false));
    sampleData.add(CustomRowModel(title:"Rajsthani", selected: false));
    sampleData.add(CustomRowModel(title: "Punjabi", selected: false));
  }

  @override
  Widget build(BuildContext context) {
    return sampleData.length == 0
        ? Container()
        : Container(
      child: ListView.separated(
        separatorBuilder: (context, index) => Divider(
          color: Colors.grey,
        ),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return new InkWell(
            //highlightColor: Colors.red,
            //splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                sampleData.forEach((element) => element.selected = false);
                sampleData[index].selected = true;
              });
            },
            child: new CustomRow(sampleData[index]),
          );
        },
      ),
    );
  }
}

class CustomRowModel {
  bool selected;
  String title;
  CustomRowModel({required this.selected, required this.title});
}

class CustomRow extends StatelessWidget {
  final CustomRowModel model;
  CustomRow(this.model);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.only(left: 8.0, right: 8.0, top: 3.0, bottom: 3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
// I have used my own CustomText class to customise TextWidget.
        */
/*  CustomText(
            label: model.title,
          ),*/ /*

          this.model.selected
              ? Icon(
            Icons.radio_button_checked,
            color: Colors.amber,
          )
              : Icon(Icons.radio_button_unchecked),
        ],
      ),
    );
  }
}
*/


/*dialogContent(BuildContext context) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(5.0),
          alignment: Alignment.topRight,
          child: Icon(
            Icons.close,
            color: Colors.grey,
            size: 20.0,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
          color: Colors.white,
          child: CustomText(
            fontSize: 16.0,
            label: "Select your preferred language",
            labelColor: AppColors.dialogTitleColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Flexible(
          child: new MyDialogContent(),//Custom ListView
        ),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
            ),
            onPressed: () {},
            color: AppColors.dialogTitleColor,
            textColor: Colors.black,
            child: CustomText(
              label: "Submit",
              fontWeight: FontWeight.bold,
              fontSize: 16.0,
            ),
          ),
        ),
      ],
    ),
  );
}*/
/*class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body:  Center(
          child: InkWell(
            onTap: () {
              showDialog<void>(
              context: context,
              builder: (BuildContext context) {
              int selectedRadio = 0;
              return AlertDialog(
              content: StatefulBuilder(
              builder: (BuildContext context, StateSetter setState) {
              return Column(
              mainAxisSize: MainAxisSize.min,
              children: List<Widget>.generate(4, (int index) {
              return Radio<int>(
              value: index,
              groupValue: selectedRadio,
              onChanged: (int? value) {
              setState(() => selectedRadio = value!);
              },
              );
              }),
              );
              },
              ),
              );
              },);},



              child: Text('Hello World'),

          ),
        ),
      ),
    );
  }
}*/
/*class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   String? _selectedId;

  Widget _buildDialog() {
    return new SimpleDialog(
      title: new Text("New Dialog"),
      children: <Widget>[
        new Container(
            padding: const EdgeInsets.all(10.0),
            child: new DropdownButton(
              hint: const Text("Pick a thing"),
              value: _selectedId,
              onChanged: (String? value) {
                setState(() {
                  _selectedId = value!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: const Text("Test"),
        ),
        body: new ListView(padding: const EdgeInsets.all(32.0), children: [
          new Container(
              padding: const EdgeInsets.all(10.0),
              child: new DropdownButton<String>(
                hint: const Text("Pick a thing"),
                value: _selectedId,
                onChanged: (String? value) {
                  setState(() {
                    _selectedId = value!;
                  });
                },
                items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
              )),
        ]),
        floatingActionButton: new FloatingActionButton(
          child: new Icon(Icons.add),
          tooltip: "New Dialog",
          onPressed: () {
            showDialog(context: context,builder: (_) => MyDialogDemo(title: 'Hello',) );
          },
        ));
  }
}


class MyDialogDemo extends StatefulWidget {
  MyDialogDemo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyDialogDemoState createState() => new _MyDialogDemoState();
}

class _MyDialogDemoState extends State<MyDialogDemo>{
  late String _selectedId;
  @override
  Widget build(BuildContext context){
    return new SimpleDialog(
      title: new Text("New Dialog"),
      children: <Widget>[
        new Container(
            padding: const EdgeInsets.all(10.0),
            child: new DropdownButton(
              hint: const Text("Pick a thing"),
              value: _selectedId,
              onChanged: (String? value) {
                setState(() {
                  _selectedId = value!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four'].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(value),
                );
              }).toList(),
            )),
      ],
    );
  }
}*/
/*
class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}
class MainPageState extends State<MainPage> {
  bool _isContainerVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold (
        body: Material (
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _isContainerVisible = !_isContainerVisible;
                      });
                    },
                    icon: Icon(
                      Icons.circle,
                      color: Colors.white,
                    ),
                    iconSize: 40.0,
                  ),  IconButton(
                    onPressed: () {
                      setState(() {
                        _isContainerVisible = !_isContainerVisible;
                      });
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    iconSize: 40.0,
                  ),
                ],
              ),
              ColoredContainer(_isContainerVisible)
            ],
          ),
        ),
      ),
    );
  }

}

class ColoredContainer extends StatelessWidget {
  ColoredContainer(this._isContainerVisible);
  final bool _isContainerVisible;

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Center (
          child: AnimatedContainer (
              duration: Duration(seconds: 1),
              color: Colors.white,
              height: _isContainerVisible ? 500.0 : 0.0,
              width: _isContainerVisible ? 300.0 : 0.0
          )
      ),
    );
  }

}
*/

/*
class _FilterChipDisplayState extends State<FilterChipDisplay> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body:
      Container(
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top: 12.0,left: 20,right: 20),
                child: _titleContainer("Day"),
              ),
                  Column(
                    children: [
                      Container(
                        width: 250,
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            children: <Widget>[
                              filterChipWidget(chipName: 'MON'),
                              filterChipWidget(chipName: 'TUE'),
                              filterChipWidget(chipName: 'WED'),
                              filterChipWidget(chipName: 'THUR'),
                              filterChipWidget(chipName: 'FRI'),
                              filterChipWidget(chipName: 'SAT'),
                              filterChipWidget(chipName: 'SUN'),
                            ],
                          ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.blueGrey, height: 10.0),
            Row(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 12.0,left: 20,right: 20),
                    child: _titleContainer('Time'),
                  ),
                ),

            Container(
              alignment: Alignment.centerLeft,
              width: 250,

              child: Column(
                children: [
                  Container(
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 10.0,
                      children: <Widget>[
                        filterChipWidget(chipName: '10AM-12PM'),
                        filterChipWidget(chipName: '12PM-2PM'),
                        filterChipWidget(chipName: '12PM-2PM'),
                        filterChipWidget(chipName: '12PM-2PM'),
                      ],
                    ),
                  ),
                ],
              ),
            ),]),
            Divider(color: Colors.blueGrey, height: 10.0,),
          ],
        ),
      ),
    );
  }
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.normal),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName,style: TextStyle(fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,fontSize: 12,color:
          _isSelected?Colors.white:Colors.blue[800]),),
      labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
   */
/*   shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),*/ /*

        shape: StadiumBorder(side: BorderSide(color: Colors.blue, width: 1)),
      backgroundColor: Color(0xffffffff),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
        showCheckmark: false,
      selectedColor: Colors.blue[800]);
  }
}
*/


/*class ChipDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {


  late GlobalKey<ScaffoldState> _key;
 // late bool _isSelected;
  late List<CompanyWidget> _companies;
  late List<String> _filters;
  late List<String> _choices;
  int _choiceIndex=0;
  bool isSelected = false;
  late bool _isSelected=false;
 // late bool isSelected;



  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    //_isSelected = false;
     _isSelected = false;

    _choiceIndex = 0;
    _filters = <String>[];
    _companies = <CompanyWidget>[
      CompanyWidget('CEO'),
      CompanyWidget('Director'),
      CompanyWidget('Manager'),
      CompanyWidget('Team Leader'),
      CompanyWidget('Employee'),
    ];
    _choices = ["Software Engineer","Software Developer",
      "Software Testing"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("Chip Widget In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            chipList(),
            _buildActionChips(),
            //_buildInputChips(),
            Wrap(
              children: companyPosition.toList(),
            ),
            _buildChoiceChips(),

          ],
        ),
      ),
    );
  }



  chipList() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        _buildChip('Gamer', Color(0xFFff6666)),
        _buildChip('Hacker', Color(0xFF007f5c)),
        _buildChip('Developer', Color(0xFF5f65d3)),
        _buildChip('Racer', Color(0xFF19ca21)),
        _buildChip('Traveller', Color(0xFF60230b)),
      ],
    );
  }


  Widget _buildChoiceChips() {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child: ListView.builder(
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Text(_choices[index]),
            selected: _choiceIndex == index,
            selectedColor: Colors.red,
            onSelected: (bool selected) {
              setState(() {
                _choiceIndex = selected ? index : 0;
              });
            },
            backgroundColor: Colors.green,
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }*/
/*
  Widget _buildInputChips() {
    return InputChip(
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.pink.shade600,
        child: Text('FD'),
      ),
      label: Text('Flutter Devs',style: TextStyle(color:
      _isSelected?Colors.white:Colors.black),
      ),
      selected: _isSelected,
      selectedColor: Colors.blue.shade600,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
      onDeleted: () {
      },
    );
  }*/

/* Widget _buildActionChips() {
    return ActionChip(
      elevation: 8.0,
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.mode_comment,color: Colors.white,size: 20,),
      ),
      label: Text('Message'),
      onPressed: () {
        _key.currentState!.showSnackBar(SnackBar(
          content: Text('Message...'),
        ));
      },
      backgroundColor: Colors.grey[200],
      shape: StadiumBorder(
          side: BorderSide(
            width: 1,
            color: Colors.redAccent,
          )),
    );
  }

  Iterable<Widget> get companyPosition sync* {
    for (CompanyWidget company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
         backgroundColor: Colors.tealAccent[200],
          avatar: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(company.name[0],style: TextStyle(color:
            _isSelected?Colors.white:Colors.black)),
          ),
          label: Text(company.name,style: TextStyle(color:
          _isSelected?Colors.white:Colors.black)),
        selected: _filters.contains(company.name,),
        //  selected: isSelected,

          selectedColor: Colors.purpleAccent,
          onSelected: (bool? selected) {
            setState(() {
              if (selected!) {
                _filters.add(company.name,);
               // isSelected = selected;
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase(),style: TextStyle(fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,fontSize: 12,color:
            isSelected?Colors.white:Colors.blue[800]),),
      ),
      label: Text(
        label,
        style: TextStyle(fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,fontSize: 12,color:
            isSelected?Colors.white:Colors.blue[800]),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

}

class CompanyWidget {
  const CompanyWidget(this.name,);
  final String name;
}*/
/*class MyThreeOptions extends StatefulWidget {
  @override
  _MyThreeOptionsState createState() => _MyThreeOptionsState();
}

class _MyThreeOptionsState extends State<MyThreeOptions> {
  int _value = 0;

  // ----What I want to appear----//
*/ /*  void v (int index){
   switch (index){
   case 0: Text('Phones');
   break;

   case 1: Text('Computers');
   break;

   case 2: Text('Accessories');
   break;
   }}*/ /*

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 12.0,
      children: List<Widget>.generate(
        3,
            (int index) {
          return ChoiceChip(
            pressElevation: 0.0,
            selectedColor: Colors.blue,
            backgroundColor: Colors.grey[100],
            label: Text("item $index"),
            selected: _value == index,
            onSelected: (bool selected) {
              setState(() {
                _value = (selected ? index : null)!;
              });
            },
          );
        },
      ).toList(),
    );}
}*/

/*
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: InputChipExample(),
    );
  }
}

class InputChipExample extends StatefulWidget {
  @override
  _InputChipExampleState createState() =>
      new _InputChipExampleState();
}

class _InputChipExampleState extends State<InputChipExample> with TickerProviderStateMixin {

  int _selectedIndex=-1;
  List<String> _options = ['Woolha', 'Flutter', 'Dart'];
  bool isSelected = false;


  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,fontSize: 12,color:
            isSelected?Colors.white:Colors.blue[800])),
        avatar: FlutterLogo(),
        elevation: 10,
        pressElevation: 5,
        //shadowColor: Colors.teal,
        //backgroundColor: Colors.black54,
       // selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: choiceChip
      ));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                child: _buildChips(),
              ),
            ],
          )
      ),
    );
  }
}
*/

/*class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  bool clickedCentreFAB = false; //boolean used to handle container animation which expands from the FAB
  int selectedIndex = 0; //to handle which item is currently selected in the bottom app bar
  String text = "Home";

  //call this method on click of each bottom app bar item to update the screen
  void updateTabSelection(int index, String buttonText) {
    setState(() {
      selectedIndex = index;
      text = buttonText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: FractionalOffset.center,
            //in this demo, only the button text is updated based on the bottom app bar clicks
            child: RaisedButton(
              child: Text(text),
              onPressed: () {},
            ),
          ),
          //this is the code for the widget container that comes from behind the floating action button (FAB)
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 250),
              //if clickedCentreFAB == true, the first parameter is used. If it's false, the second.
              height:
              clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              width: clickedCentreFAB ? MediaQuery.of(context).size.height : 10.0,
              decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.circular(clickedCentreFAB ? 0.0 : 300.0),
                  color: Colors.blue),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked, //specify the location of the FAB
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            clickedCentreFAB = !clickedCentreFAB; //to update the animated container
          });
        },
        tooltip: "Centre FAB",
        child: Container(
          margin: EdgeInsets.all(15.0),
          child: Icon(Icons.add),
        ),
        elevation: 4.0,
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                //update the bottom app bar view each time an item is clicked
                onPressed: () {
                  updateTabSelection(0, "Home");
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.home,
                  //darken the icon if it is selected or else give it a different color
                  color: selectedIndex == 0
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              Column(
                children: [
                  IconButton(
                    onPressed: () {
                      updateTabSelection(1, "Outgoing");
                    },
                    iconSize: 27.0,
                    icon: Column(
                      children: [
                        Icon(
                          Icons.call_made,
                          color: selectedIndex == 1
                              ? Colors.blue.shade900
                              : Colors.grey.shade400,
                        ),Container(
                            child: Text("outgoing",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
                      ],
                    ),
                  ),
                ],
              ),
              //to leave space in between the bottom app bar items and below the FAB
              SizedBox(
                width: 50.0,
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(2, "Incoming");
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.call_received,
                  color: selectedIndex == 2
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
              IconButton(
                onPressed: () {
                  updateTabSelection(3, "Settings");
                },
                iconSize: 27.0,
                icon: Icon(
                  Icons.settings,
                  color: selectedIndex == 3
                      ? Colors.blue.shade900
                      : Colors.grey.shade400,
                ),
              ),
            ],
          ),
        ),
        //to add a space between the FAB and BottomAppBar
        shape: CircularNotchedRectangle(),
        //color of the BottomAppBar
        color: Colors.white,
      ),
    );
  }
}*/

/*class WrapWidgetDemo extends StatefulWidget {
  //
  final String title = 'Wrap Widget & Chips';

  @override
  State<StatefulWidget> createState() => _WrapWidgetDemoState();
}

class _WrapWidgetDemoState extends State<WrapWidgetDemo> {
  //

  late GlobalKey<ScaffoldState> _key;
  late List<String> _dynamicChips;
  late bool _isSelected;
  late List<Company> _companies;
  late List<String> _filters;
  late List<String> _choices;
  late int _defaultChoiceIndex;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _isSelected = false;
    _defaultChoiceIndex = 0;
    _filters = <String>[];
    _companies = <Company>[
      const Company('Google'),
      const Company('Apple'),
      const Company('Microsoft'),
      const Company('Sony'),
      const Company('Amazon'),
    ];
    _dynamicChips = ['Health', 'Food', 'Nature'];
    _choices = ['Choice 1', 'Choice 2', 'Choice 3'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: rowChips(),
          // ),
          Divider(),
          wrapWidget(),
          Divider(),
          dynamicChips(),
          Divider(),
          actionChips(),
          Divider(),
          choiceChips(),
          Divider(),
          inputChips(),
          Divider(),
          Wrap(
            children: companyWidgets.toList(),
          ),
          Text('Selected: ${_filters.join(', ')}'),
        ],
      ),
    );
  }

  rowChips() {
    return Row(
      children: <Widget>[
        chipForRow('Health', Color(0xFFff8a65)),
        chipForRow('Food', Color(0xFF4fc3f7)),
        chipForRow('Lifestyle', Color(0xFF9575cd)),
        chipForRow('Sports', Color(0xFF4db6ac)),
        chipForRow('Nature', Color(0xFF5cda65)),
      ],
    );
  }

  wrapWidget() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        chip('Health', Color(0xFFc40233)),
        chip('Food', Color(0xFF007f5c)),
        chip('Lifestyle', Color(0xFF5f65d3)),
        chip('Sports', Color(0xFF19ca21)),
        chip('Nature', Color(0xFF60230b)),
      ],
    );
  }

  dynamicChips() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: List<Widget>.generate(_dynamicChips.length, (int index) {
        return Chip(
          label: Text(_dynamicChips[index]),
          onDeleted: () {
            setState(() {
              _dynamicChips.removeAt(index);
            });
          },
        );
      }),
    );
  }

  Widget choiceChips() {
    return Expanded(
      child: ListView.builder(
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Text(_choices[index]),
            selected: _defaultChoiceIndex == index,
            selectedColor: Colors.green,
            onSelected: (bool selected) {
              setState(() {
                _defaultChoiceIndex = selected ? index : 0;
              });
            },
            backgroundColor: Colors.blue,
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }

  Widget inputChips() {
    return InputChip(
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.blue.shade600,
        child: Text('JW'),
      ),
      label: Text('James Watson'),
      selected: _isSelected,
      selectedColor: Colors.green,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
      // onPressed: () {
      //   //
      // },
      onDeleted: () {
        //
      },
    );
  }

  Widget actionChips() {
    return ActionChip(
      elevation: 6.0,
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.green[60],
        child: Icon(Icons.call),
      ),
      label: Text('Call'),
      onPressed: () {
        _key.currentState!.showSnackBar(SnackBar(
          content: Text('Calling...'),
        ));
      },
      backgroundColor: Colors.white,
      shape: StadiumBorder(
          side: BorderSide(
            width: 1,
            color: Colors.blueAccent,
          )),
    );
  }

  Iterable<Widget> get companyWidgets sync* {
    for (Company company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          avatar: CircleAvatar(
            child: Text(company.name[0].toUpperCase()),
          ),
          label: Text(company.name),
          selected: _filters.contains(company.name),
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget chip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(5.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(6.0),
    );
  }

  Widget chipForRow(String label, Color color) {
    return Container(
      margin: EdgeInsets.all(6.0),
      child: Chip(
        labelPadding: EdgeInsets.all(5.0),
        avatar: CircleAvatar(
          backgroundColor: Colors.grey.shade600,
          child: Text(label[0].toUpperCase()),
        ),
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: color,
        elevation: 6.0,
        shadowColor: Colors.grey[60],
        padding: EdgeInsets.all(6.0),
      ),
    );
  }
}

class Company {
  const Company(this.name);
  final String name;
}*/
/*class InputChipExample extends StatefulWidget {
  @override
  _InputChipExampleState createState() =>
      new _InputChipExampleState();
}

class _InputChipExampleState extends State<InputChipExample> {

   int _selectedIndex=-1;
  List<String> _options = ['MON', 'TUE', 'WED','THUR','FRI','SAT','SUN'];

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_options[i], style: TextStyle(color: Colors.white)),
        //avatar: FlutterLogo(),
        //elevation: 5,
        //pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.black54,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 0),
          child: choiceChip
      ));
    }

    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      childAspectRatio: (4 / 1.5),
      crossAxisSpacing: 0.0,
      mainAxisSpacing: 0,
     // physics: NeverScrollableScrollPhysics(),
      // This next line does the trick.
     // scrollDirection: Axis.vertical,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                child: _buildChips(),
              ),
            ],
          )
      ),
    );
  }
}*/


/*
class ChipDemo extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {


  late GlobalKey<ScaffoldState> _key;
  late bool _isSelected;
  late List<CompanyWidget> _companies;
  late List<String> _filters;
  late List<String> _choices;
  late int _choiceIndex;

  @override
  void initState() {
    super.initState();
    _key = GlobalKey<ScaffoldState>();
    _isSelected = false;
    _choiceIndex = 0;
    _filters = <String>[];
    _companies = <CompanyWidget>[
      CompanyWidget('CEO'),
      CompanyWidget('Director'),
      CompanyWidget('Manager'),
      CompanyWidget('Team Leader'),
      CompanyWidget('Employee'),
    ];
    _choices = ["Software Engineer","Software Developer",
      "Software Testing"];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("Chip Widget In Flutter"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            chipList(),
            //buildActionChips(),
            //_buildInputChips(),
            Wrap(
              children: companyPosition.toList(),
            ),
           // _buildChoiceChips(),

          ],
        ),
      ),
    );
  }



  chipList() {
    return Wrap(
      spacing: 6.0,
      runSpacing: 6.0,
      children: <Widget>[
        _buildChip('Gamer', Color(0xFFff6666)),
        _buildChip('Hacker', Color(0xFF007f5c)),
        _buildChip('Developer', Color(0xFF5f65d3)),
        _buildChip('Racer', Color(0xFF19ca21)),
        _buildChip('Traveller', Color(0xFF60230b)),
      ],
    );
  }
*/


/*  Widget _buildChoiceChips() {
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child: ListView.builder(
        itemCount: _choices.length,
        itemBuilder: (BuildContext context, int index) {
          return ChoiceChip(
            label: Text(_choices[index]),
            selected: _choiceIndex == index,
            selectedColor: Colors.red,
            onSelected: (bool selected) {
              setState(() {
                _choiceIndex = selected ? index : 0;
              });
            },
            backgroundColor: Colors.green,
            labelStyle: TextStyle(color: Colors.white),
          );
        },
      ),
    );
  }*/

/*  Widget _buildInputChips() {
    return InputChip(
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.pink.shade600,
        child: Text('FD'),
      ),
      label: Text('Flutter Devs',style: TextStyle(color:
      _isSelected?Colors.white:Colors.black),
      ),
      selected: _isSelected,
      selectedColor: Colors.blue.shade600,
      onSelected: (bool selected) {
        setState(() {
          _isSelected = selected;
        });
      },
      onDeleted: () {
      },
    );
  }*/

/* Widget _buildActionChips() {
    return ActionChip(
      elevation: 8.0,
      padding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.mode_comment,color: Colors.white,size: 20,),
      ),
      label: Text('Message'),
      onPressed: () {
        _key.currentState!.showSnackBar(SnackBar(
          content: Text('Message...'),
        ));
      },
      backgroundColor: Colors.grey[200],
      shape: StadiumBorder(
          side: BorderSide(
            width: 1,
            color: Colors.redAccent,
          )),
    );
  }
*/
/*  Iterable<Widget> get companyPosition sync* {
    for (CompanyWidget company in _companies) {
      yield Padding(
        padding: const EdgeInsets.all(6.0),
        child: FilterChip(
          backgroundColor: Colors.tealAccent[200],
          avatar: CircleAvatar(
            backgroundColor: Colors.cyan,
            child: Text(company.name[0].toUpperCase(),style: TextStyle(color: Colors.white),),
          ),
          label: Text(company.name,),
          selected: _filters.contains(company.name),selectedColor: Colors.purpleAccent,
          onSelected: (bool selected) {
            setState(() {
              if (selected) {
                _filters.add(company.name);
              } else {
                _filters.removeWhere((String name) {
                  return name == company.name;
                });
              }
            });
          },
        ),
      );
    }
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      labelPadding: EdgeInsets.all(2.0),
      avatar: CircleAvatar(
        backgroundColor: Colors.white70,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      backgroundColor: color,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: EdgeInsets.all(8.0),
    );
  }

}

class CompanyWidget {
  const CompanyWidget(this.name);
  final String name;
}*/


/*class Applyscreen2 extends StatefulWidget {
  @override
  _ApplyscreenPageState createState() => _ApplyscreenPageState();
}
class _ApplyscreenPageState extends State<Applyscreen2>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: StaggeredGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2.0,
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
          ],
          children: <Widget>[
            captionText("Track Status"),
            myPhotoList('assets/images/piggi2.png','Micro Loan\nunder(50k)',Color(0xffd9e0d0),Color(0xff9aa48a)),
            myPhotoList('assets/images/crad.png', 'Credit cards',Color(0xfffff9f9),Color(0xfffecbca)),
            myPhotoList('assets/images/cash.png', 'Transfer\nPersonal Loan',Color(0xff8c9898),Color(0xff354544)),
            myPhotoList('assets/images/persnoal.png', 'Personal  Loan',Color(0xff717699),Color(0xff3f4157) ),
            myPhotoList('assets/images/home-trn.png', 'Transfer\nHome Loan',Color(0xffeee8b6),Color(0xffd4cd85)),
            myPhotoList('assets/images/homeloan.png', 'Home Loan',Color(0xffc8e5d1),Color(0xff67b27b)),
            myPhotoList('assets/images/bag2.png', 'Business Loan',Color(0xffe5f2f1),Color(0xff9cdcde)),
          ],
        ),
      ),
    );
  }
  Widget captionText(String titleText) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(color: Color(0xff0052ca),),
        ],
      ),
      margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
        //  margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
            alignment: Alignment.center,
            child: Text(titleText,
              style: TextStyle(color: Colors.white, fontSize: 12.0),textAlign: TextAlign.center,),
          ),  Padding(
            padding: const EdgeInsets.only(left: 10.0,right: 2),
            child: Image.asset('assets/images/status.png',
              width: 20,height: 20,),
          )
        ],
      ),
    );
  }

  Widget myPhotoList(String MyImages,String name,Color startColor,Color endColor) {
    return Container(
      margin:EdgeInsets.fromLTRB(20, 10, 20, 20
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(color: Colors.white,),
        ],
      ),
      width: 110,
      //color: Colors.red,
      child: Neumorphic(
        style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            shape: NeumorphicShape.flat,
            depth: 4,
            lightSource: LightSource.topLeft,
            color: Colors.white),
        child: Column(
          children: [
            Container(
              //width: 110,
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
                gradient: LinearGradient(colors: [
                  startColor,
                  endColor,
                ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              */ /*  boxShadow: [
                  BoxShadow(
                    color: endColor,
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ],*/ /*
              ),

              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  child: Image.asset(MyImages,height: 45,
                    //'assets/images/upcominng lectures.png',
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              width: 110,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                boxShadow: [
                  new BoxShadow(color: Colors.transparent,),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.only(top: 5.0,bottom: 5),

                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(name,
                    //'12:30 PM',
                    style: TextStyle(color: Colors.blueGrey,fontStyle: FontStyle.normal,
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
*/


/*Container(
      //height: 140,
      //height: 100,
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      // width: double.infinity,
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
           //width: 150,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(8),topRight: Radius.circular(8)),
              gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.white,
                Colors.blue,
              ],
            ),
            ),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(
                      MyImages),
                ),
              ),
            ),
          ),
          Text(index,
            style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 10,
            ),
          ),
        ],
      ),
    );*/
// }
//}
/* class BackGroundTile extends StatelessWidget {
   final Color backgroundColor;
   final IconData icondata;

   BackGroundTile({required this.backgroundColor, required this.icondata});

   @override
   Widget build(BuildContext context) {
     return Card(
       color: backgroundColor,
       child: Icon(icondata, color: Colors.yellow),
     );
   }
 }*/

/*void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyFloatingButton(),
    );
  }
}

class MyFloatingButton extends StatefulWidget {
  @override
  _MyFloatingButtonState createState() => _MyFloatingButtonState();
}

class _MyFloatingButtonState extends State<MyFloatingButton> {
  bool _show = true;
    int _radioValue = 0;
  */ /* var sheetController = showBottomSheet(
        context: context,
        builder: (context) => BottomSheetWidget());*/ /*
  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;
    });
    print("first" + value.toString() + "radiovalue" + _radioValue.toString());
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Wrap(
        children: <Widget>[
          Center(
              child: Container(
                  height: 3.0, width: 40.0, color: Color(0xFF32335C))),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Radio(
                value: 0,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value;
                  });
                  print("radiofirst" +
                      value.toString() +
                      "radiovalue" +
                      _radioValue.toString());
                  _handleRadioValueChange(value);
                },
              ),
              Text(
                'Single Date',
                style: TextStyle(fontSize: 16.0),
              ),
              Radio(
                value: 1,
                groupValue: _radioValue,
                onChanged: (value) {
                  setState(() {
                    _radioValue = value;
                  });
                  print("radiosecond " +
                      value.toString() +
                      "radiovalue " +
                      _radioValue.toString());
                  _handleRadioValueChange(value);
                },
              ),
              Text(
                'Dual Date',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}*/

/*
class FilterChipDisplay extends StatefulWidget {
  @override
  _FilterChipDisplayState createState() => _FilterChipDisplayState();
}

class _FilterChipDisplayState extends State<FilterChipDisplay> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.add, color: Colors.white,),
            onPressed: () {}),
        title: Text("Filter Result", style: TextStyle(color: Colors.white,),),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.add, color: Colors.white,),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Align
            (
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer("Choose amenities"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Align
              (
              alignment: Alignment.centerLeft,
              child: Container(
                  child: Wrap(
                    spacing: 5.0,
                    runSpacing: 3.0,
                    children: <Widget>[
                      filterChipWidget(chipName: 'Elevator'),
                      filterChipWidget(chipName: 'Washer/Dryer'),
                      filterChipWidget(chipName: 'Fireplace'),
                      filterChipWidget(chipName: 'Dogs ok'),
                      filterChipWidget(chipName: 'Cats ok'),
                      filterChipWidget(chipName: 'Wheelchair access'),

                    ],
                  )
              ),
            ),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
          Align
            (
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: _titleContainer('Choose Neighborhoods'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
            child: Align
              (
              alignment: Alignment.centerLeft,
              child: Container(
                child: Wrap(
                  spacing: 5.0,
                  runSpacing: 5.0,
                  children: <Widget>[
                    filterChipWidget(chipName: 'Upper Manhattan'),
                    filterChipWidget(chipName: 'Manhattanville'),
                    filterChipWidget(chipName: 'Harlem'),
                    filterChipWidget(chipName: 'Washington Heights'),
                    filterChipWidget(chipName: 'Inwood'),
                    filterChipWidget(chipName: 'Morningside Heights'),
                  ],
                ),
              ),
            ),
          ),
          Divider(color: Colors.blueGrey, height: 10.0,),
        ],
      ),
    );
  }

}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key? key, required this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(color: Color(0xff6200ee),fontSize: 16.0,fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            30.0),),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),);
  }
}
*/


//void main() => runApp(MyApp());

/*
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: InputChipExample(),
    );
  }
}

class InputChipExample extends StatefulWidget {
  @override
  _InputChipExampleState createState() =>
      new _InputChipExampleState();
}

class _InputChipExampleState extends State<InputChipExample> with TickerProviderStateMixin {

  List<String> _options = ['Flutter', 'Dart', 'Woolha'];
  List<bool> _selected = [false, false, false];

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      FilterChip filterChip = FilterChip(
        selected: _selected[i],
        label: Text(_options[i], style: TextStyle(color: Colors.white)),

       // avatar: FlutterLogo(),
        elevation: 10,


        pressElevation: 5,
        shadowColor: Colors.teal,
        backgroundColor: Colors.grey[400],
       // selectedColor: Colors.blue,

        onSelected: (bool selected) {
          setState(() {
            _selected[i] = selected;
          });

        },
        showCheckmark: false,
        selectedColor: Colors.deepOrange,
        labelStyle: TextStyle(
          color: Colors.yellow,
        ),


      );

      chips.add(Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: filterChip
      ));
    }

    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 30,
                child: _buildChips(),
              ),
            ],
          )
      ),
    );
  }
}
*/


/*import 'dart:ui' as ui;
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final double _borderRadius = 24;

  var items = [
    PlaceInfo('assets/images/imagecard.png',Icons.more_vert,'assets/images/visa_logo.png',' 7656         5432        3334        2234 ',
  'assets/images/card_chip.png','KARUNNYA',"BALANCE: ₹ 500/-",Color(0xfff4d5d4), Color(0xfffefefe),
        ),

    PlaceInfo('assets/images/imagecard.png',Icons.more_vert,'assets/images/visa_logo.png',' 7656         5432        3334        2234 ',
      'assets/images/card_chip.png','KARUNNYA',"BALANCE: ₹ 500/-",Color(0xffd7e3c4),Color(0xfff1f1ed),
    ),

    PlaceInfo('assets/images/imagecard.png',Icons.more_vert,'assets/images/visa_logo.png',' 7656         5432        3334        2234 ',
      'assets/images/card_chip.png','KARUNNYA',"BALANCE: ₹ 500/-",Color(0xffcacfeb),Color(0xffeef0f5),
    ),
    PlaceInfo('assets/images/imagecard.png',Icons.more_vert,'assets/images/visa_logo.png',' 7656         5432        3334        2234 ',
      'assets/images/card_chip.png','KARUNNYA',"BALANCE: ₹ 500/-",Color(0xffD76EF5),Color(0xff8F7AFE),
    ),

  ];
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Foody'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 145,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(colors: [
                        items[index].startColor,
                        items[index].endColor
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: items[index].endColor,
                          blurRadius: 12,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: CustomPaint(
                      size: Size(100, 150),
                      painter: CustomCardShapePainter(_borderRadius,
                          items[index].startColor, items[index].endColor),
                    ),
                  ),

                  Positioned.fill(
                    child: Container(
                      margin:EdgeInsets.fromLTRB(20, 0, 20, 0),
                      width: double.infinity,
                      height: 135,

                      decoration: BoxDecoration(
                        borderRadius:BorderRadius.circular(10),
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
                                        child: Image.asset(items[index].image,width: 200,height: 180,))
                                ),Container(
                                  child: Column(
                                    */ /* crossAxisAlignment: CrossAxisAlignment.end,
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
                                            child: Image.asset(items[index].visa,width: 70,),
                                          ),
                                        ),Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:<Widget>[
                                              Container(
                                                alignment: Alignment.topLeft,
                                                margin:EdgeInsets.fromLTRB(20, 10, 20, 0),
                                                child: Text( items[index].cardnumber,
                                                    style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.bold,fontSize: 14)),),
                                              Padding(
                                                padding:EdgeInsets.fromLTRB(10, 0, 0, 0),
                                                child: Container(
                                                  alignment: Alignment.topRight,
                                                  margin:EdgeInsets.fromLTRB(20, 5, 20, 0),
                                                  child:Padding(
                                                    padding: const EdgeInsets.all(2.0),
                                                    child: Image.asset(items[index].simcard,width: 22,),
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
                                                child: Text(items[index].personname,
                                                    style: TextStyle(color: Colors.white,fontStyle: FontStyle.normal,
                                                        fontWeight: FontWeight.bold,fontSize: 14)),),
                                              Container(
                                                alignment: Alignment.topRight,
                                                margin:EdgeInsets.fromLTRB(20, 20, 20, 0),
                                                child:Text(items[index].balance,
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
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class PlaceInfo {
  final String image;
  final IconData icon;
  final String visa;
  final String cardnumber;
  final String simcard;
  final String personname;
  final String balance;
  final Color startColor;
  final Color endColor;



  PlaceInfo(this.image, this.icon, this.visa, this.cardnumber,
      this.simcard, this.personname,this.balance,this.startColor,this.endColor,);
}

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
}*/


/*void main() => runApp(MyApp2());

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Create Checkbox Dynamically"),
          ),
          body: SafeArea(
              child : Center(

                child:CheckboxWidget(),

              )
          )
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  @override
  CheckboxWidgetState createState() => new CheckboxWidgetState();
}

class CheckboxWidgetState extends State {

  Map<String, bool> numbers = {
    'One' : false,
    'Two' : false,
    'Three' : false,
    'Four' : false,
    'Five' : false,
    'Six' : false,
    'Seven' : false,
  };

  var holder_1 = [];

  getItems(){

    numbers.forEach((key, value) {
      if(value == true)
      {
        holder_1.add(key);
      }
    });

    // Printing all selected items on Terminal screen.
    print(holder_1);
    // Here you will get all your selected Checkbox items.

    // Clear array after use.
    holder_1.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column (children: <Widget>[

      RaisedButton(
        child: Text(" Get Checked Checkbox Items ", style: TextStyle(fontSize: 20),),
        onPressed: getItems,
        color: Colors.green,
        textColor: Colors.white,
        splashColor: Colors.grey,
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      ),

      Expanded(
        child :
        ListView(
          children: numbers.keys.map((String key) {
            return new CheckboxListTile(
              title: new Text(key),
              value: numbers[key],
              activeColor: Colors.pink,
              checkColor: Colors.white,
              onChanged: (bool? value) {
                setState(() {
                  numbers[key] = value!;
                });
              },
            );
          }).toList(),
        ),
      ),]);
  }
}*/
/*
class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final List<Map<String?, String>> popular = [
    {'img': 'assets/images/wallet.png', "name": 'Rain Forest', "city": 'Costa Rica'},
    {'img': 'assets/images/esst.png', "name": 'Lake Louise', "city": 'Canada'},
    {'img': 'assets/pli.jpg', "name": 'Plitivice Lakes', "city": 'Croatia'},
    {'img': 'assets/skydu.jpg', "name": 'Dubai', "city": 'UAE'},
    {'img': 'assets/img3.jpg', "name": 'Effil Tower', "city": 'Paris'},
    {'img': 'assets/pyr.jpg', "name": 'Pyramids', "city": 'Edypt'},
    {'img': 'assets/img33.jpg', "name": 'island', "city": 'scandinavia'},
    {'img': 'assets/biza.jpg', "name": 'Biza Tower', "city": 'Italy'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            height: 40,
            child: Image.asset('assets/pp.jpg'),
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.grey[300],
                      hintText: 'Search here...',
                      contentPadding: EdgeInsets.symmetric(vertical: 9),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Explore the world\nwith us!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      'Popular',
                      style: TextStyle(color: Colors.red, fontSize: 17),
                    ),
                    Text(
                      'Most Viewed',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                    Text(
                      'All places',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                StaggeredGridView.countBuilder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: ScrollPhysics(),
                  crossAxisCount: 4,
                 // itemCount: popular.length,
                    itemCount: popular == null ? 0 : popular.length,
                  itemBuilder: (BuildContext context, int index) => Stack(
                    children: [
                      ClipRRect(
                        child: Image.asset(popular[index]['img'] ?? ''),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              popular[index]['name'] ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              popular[index]['city'] ?? '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  staggeredTileBuilder: (int index) => new StaggeredTile.fit(2),
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
*/

/*class OnboardingScreen extends StatefulWidget {
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
       */ /*   decoration: BoxDecoration(
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

/*class Testscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainPage(),
    );
  }
}
class mainPage extends StatefulWidget {
  @override
  _mainPageState createState() => _mainPageState();
}
class _mainPageState extends State<mainPage> {
  List<PageViewModel> getPages() {
    return [
      PageViewModel(
          image: Image.asset("images/livedemo.png"),
          title: "Live Demo page 1",
          body: "Welcome to Proto Coders Point",
          footer: Text("Footer Text here "),
          decoration: const PageDecoration(
            pageColor: Colors.blue,
          )),
      PageViewModel(
        image: Image.asset("images/visueldemo.png"),
        title: "Live Demo page 2 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo3.png"),
        title: "Live Demo page 3",
        body: "Welcome to Proto Coders Point",
        footer: Text("Footer Text  here "),
      ),
      PageViewModel(
        image: Image.asset("images/demo4.png"),
        title: "Live Demo page 4 ",
        body: "Live Demo Text",
        footer: Text("Footer Text  here "),
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Introduction Screen"),
      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        //pages: getPages(),
       // pages: getPages!=null(),
        //pages != null || getPages != null,
        //pages: != null || getPages() != null,
        showNextButton: true,
        showSkipButton: true,
        skip: Text("Skip"),
        done: Text("Got it "),
        onDone: () {},
      ),
    );
  }
}*/
/*import 'package:klcc_woms/src/ui/animation/route_animations.dart';
import 'package:klcc_woms/src/ui/screens/user/login_phone_number_page.dart';
import 'package:klcc_woms/src/ui/screens/user/onboardscreen.dart';*/
/*

class WalkthroughPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
      title: 'Introduction screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: OnBoardingPage(),
    );
  }
}

class OnBoardingPage extends StatefulWidget {
  @override
  OnBoardingPageState createState() => OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
        RouteAnimationSlideFromRight(widget: OnBoardScreen()));
  }

  Widget _buildFullscrenImage() {
    return Image.asset(
      'assets/fullscreen.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "",
          body:
          "",
          image: Image.asset(
            'assets/images/intro_one.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
          ),
        ),PageViewModel(
          title: "",
          body:
          "",
          image: Image.asset(
            'assets/images/intro_two.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
          ),
        ), PageViewModel(
          title: "",
          body: "",
          image: Image.asset(
            'assets/images/intro_three.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          decoration: pageDecoration.copyWith(
            contentMargin: const EdgeInsets.symmetric(horizontal: 16),
            fullScreen: true,
            bodyFlex: 2,
            imageFlex: 3,
          ),
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      //rtl: true, // Display as right-to-left
      skip: const Text('SKIP',style: TextStyle(color: Colors.white),),
      next: const Icon(Icons.arrow_forward,color: Colors.white,),
      done: const Text('DONE', style: TextStyle(fontWeight: FontWeight.w600,color: Colors.white)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.only(left: 16,right: 16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: const Center(child: Text("This is the screen after Introduction")),
    );
  }
}
*/


/*

class IntroScreen extends StatelessWidget {


  final pageDecoration = PageDecoration(
    titleTextStyle:
    PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentMargin: const EdgeInsets.all(10),
  );

*/

/*

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/intro.png", fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,),
        title: "Online Article",
        body: "hello",
        footer: Text(
          "hello2",
          style: TextStyle(color: Colors.black),
        ),
        decoration: pageDecoration.copyWith(
          contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          fullScreen: true,
          bodyFlex: 2,
          imageFlex: 3,
        ),),
      PageViewModel(
        title: "Title of first page",
        body: "Here you can write the description of the page, to explain someting...",
        image: Center(child: Image.asset("res/images/logo.png", height: 175.0)),
        decoration: const PageDecoration(
          pageColor: Colors.blue,
        ),
      ),
      PageViewModel(
          image: Image.asset("assets/images/website.png"),
          title: "Html & CSS",
          body: "This is an online course where you can learn html & css",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/shared_workspace.png"),
          title: "Workspace",
          body: "Want a workspace? Then check it out.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
    ];
  }
*/

/* List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset("assets/images/intro.png", fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,),
        title: "Online Article",
        body: "hello",
        footer: Text(
          "hello2",
          style: TextStyle(color: Colors.black),
        ),
        decoration: pageDecoration.copyWith(
          contentMargin: const EdgeInsets.symmetric(horizontal: 16),
          fullScreen: true,
          bodyFlex: 2,
          imageFlex: 3,
        ),),
      PageViewModel(
          image: Image.asset("assets/images/online_article.png"),
          title: "Online Article",
          body: "This is an online article.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/website.png"),
          title: "Html & CSS",
          body: "This is an online course where you can learn html & css",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
      PageViewModel(
          image: Image.asset("assets/images/shared_workspace.png"),
          title: "Workspace",
          body: "Want a workspace? Then check it out.",
          footer: Text(
            "MTECHVIRAL",
            style: TextStyle(color: Colors.black),
          ),
          decoration: pageDecoration),
    ];
  }*/

/*  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  //colors: [Colors.green, Colors.blue]
                  colors: <Color>[
                    Color(0xff01142b),
                    Color(0xff002860),
                  ],
                )
            ),
            child:IntroductionScreen(
    //pages: listPagesViewModel,
    done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
    onDone: () {
    // When done button is press
    },
    )));
  }
}*/
/*void main() {
  runApp(new Testscreen());
}

class Testscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      home: new TestscreenPage(),
    );
  }
}

class TestscreenPage extends StatefulWidget {
  @override
  _TestscreenPageState createState() => new _TestscreenPageState();
}

class _TestscreenPageState extends State<TestscreenPage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('TestProject'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: new ListView(
                children: <Widget>[
                  new Card(
                    child: new ListTile(
                      title: const Text('Some information'),
                    ),
                  ),
                  new Container(
                    //decoration: new BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
                    child: new TabBar(
                      controller: _controller,
                      tabs: [
                        new Tab(
                          icon: const Icon(Icons.home),
                          text: 'Address',
                        ),
                        new Tab(
                          icon: const Icon(Icons.my_location),
                          text: 'Location',
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 80.0,
                    child: new TabBarView(
                      controller: _controller,
                      children: <Widget>[
                        new Card(
                          child: new ListTile(
                            leading: const Icon(Icons.home),
                            title: new TextField(
                              decoration: const InputDecoration(hintText: 'Search for address...'),
                            ),
                          ),
                        ),
                        new Card(
                          child: new ListTile(
                            leading: const Icon(Icons.location_on),
                            title: new Text('Latitude: 48.09342\nLongitude: 11.23403'),
                            trailing: new IconButton(icon: const Icon(Icons.my_location), onPressed: () {}),
                          ),
                        ),
                      ],
                    ),
                  ),
                  new Card(
                    child: new ListTile(
                      title: const Text('Some more information'),
                    ),
                  ),
                  new RaisedButton(
                    color: Theme.of(context).primaryColor,
                    onPressed: () {},
                    child: const Text(
                      'Search for POIs',
                      style: const TextStyle(color: Colors.white),
                    ),
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


*/

/*void main() {
  runApp(Testscreen());
}

class Testscreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
*/ /* const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),*/ /*
];

List<Widget> _tiles = const <Widget>[
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),
  const _GreedlistTile(Colors.yellow, "assets/images/health.png","credit card"),

];


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Container(
          //height: 600,
          width: double.infinity,
          child: new Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 20,right: 20),
              child: new StaggeredGridView.count(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,

                crossAxisCount: 4,
                staggeredTiles: _staggeredTiles,
                children: _tiles,
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 10.0,
                padding: const EdgeInsets.all(4.0),
              )),
        ));
  }
}

class _GreedlistTile extends StatelessWidget {
  const _GreedlistTile(this.backgroundColor, this.iconData,this.name);

  final Color backgroundColor;
  final String iconData;
  final String name;

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin:EdgeInsets.fromLTRB(10, 4, 10, 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          new BoxShadow(color: Colors.white,),
        ],
      ),
      width: 110,
      //color: Colors.red,
      child: Neumorphic(
        //margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
        style: NeumorphicStyle(depth: NeumorphicTheme.embossDepth(context),
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
            intensity: 10.0,
            lightSource: LightSource.topLeft,
            color: backgroundColor
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 110,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),

              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(

                  child: Image.asset(iconData,
                    //'assets/images/upcominng lectures.png',
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(color: Colors.white,),
                ],
              ),

              child: Padding(
                padding: const EdgeInsets.all(6.0),

                child: Container(
                  alignment: Alignment.center,
                  child: Text(name,
                    //'12:30 PM',
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
    */ /*Container(
      //height: 100,
      //width: 100,
      child: new Card(
        color: backgroundColor,
        child: new InkWell(
          onTap: () {

          },
          child: new Center(
            child: new Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Image.asset(
                iconData,height: 70,width: 70,
                //color: Colors.white,
              ),

            ),
          ),
        ),
      ),
    );*/ /*
  }
}*/


/*
class Testscreen extends StatefulWidget {

  @override
  _TestscreenState createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Container(
         // color: Colors.grey[400],
          //height: 400,

          child:Container(
            margin:EdgeInsets.fromLTRB(10, 20, 10, 20),
            child: new StaggeredGridView.countBuilder(
              crossAxisCount: 4,
              itemCount: 8,
                //physics: NeverScrollableScrollPhysics(),

              itemBuilder: (BuildContext context, int index) => new Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0),
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      new BoxShadow(color: Colors.green, offset: new Offset(-1, -1),),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      new Center(
                        child: new CircleAvatar(
                          backgroundColor: Colors.white,
                        //  child: new Text('$index'),
                        ),
                      ),
              Container(
                padding: const EdgeInsets.all(8),
                child: const Text("credit cards"),
                color: Colors.green[100],
              ),

                    ],
                  ),

              ),
              staggeredTileBuilder: (int index) =>
              new StaggeredTile.count(2, index.isEven ? 2 :3),
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 8.0,


            ),
          ),
        ) ,
    );
  }
}*/

/*Padding(
         padding: EdgeInsets.symmetric(
        vertical: 10.0, horizontal: 10.0),
    child: Container(
   // width: double.infinity,
    //height: 500,

    child: GridView.count(
    crossAxisCount: 2,
    childAspectRatio: (4 / 3),
    crossAxisSpacing: 10.0,
    mainAxisSpacing: 10,
    physics: NeverScrollableScrollPhysics(),
    children: List.generate(choices.length, (index) {
    return Center(
    child: SelectCard(choice: choices[index]),
    );
    }
    )
    ),
        ),
    ),
        ) ,*/
/*Container(
              child: new StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => new Container(
                    color: Colors.green,
                    child: new Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text('$index'),
                      ),
                    )),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 :1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),*/


/*Container(
            margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
           height: 105,
            width: 110,
            decoration: BoxDecoration(
              //borderRadius: BorderRadius.circular(8),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  topLeft: Radius.circular(10.0)),
              boxShadow: [
                new BoxShadow(color: Colors.white),
              ],
            ),

            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 0),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10.0),
                        topLeft: Radius.circular(10.0)),
                    boxShadow: [
                      new BoxShadow(color: Colors.pink),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("assets/images/wallet.png"),
                  ),
                ),Container(
                  alignment: Alignment.center,
                  height: 35,
                  //width: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10.0),
                        bottomLeft: Radius.circular(10.0)),
                    boxShadow: [
                      new BoxShadow(color: Colors.grey),
                    ],
                  ),
                  child: Text("Credit Cards",style: TextStyle(color: Colors.grey[400],fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,fontSize: 14)),
                ),
              ],
            ),
          ),
        ),*/

/*Container(
              child: new StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) => new Container(
                    color: Colors.green,
                    child: new Center(
                      child: new CircleAvatar(
                        backgroundColor: Colors.white,
                        child: new Text('$index'),
                      ),
                    )),
                staggeredTileBuilder: (int index) =>
                new StaggeredTile.count(2, index.isEven ? 2 :1),
                mainAxisSpacing: 4.0,
                crossAxisSpacing: 4.0,
              ),
            ),*/

/*
void main() {
  runApp(
    new MaterialApp(
      home: Testscreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Testscreen extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Testscreen> {
  String initialValue = 'Select Standerd';

  var itemList = [
    'Select Standerd',
    'Std1',
    'Std2',
    'Std3',
    'Std4',
    'Std5',
    'Std6',
    'Std7'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
        //color: Colors.grey,
        height: size.height,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(color: Colors.white),
          ],
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  new BoxShadow(color: Colors.white),
                ],
              ),
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: DropdownButtonHideUnderline(

                child: DropdownButton(
                  isExpanded: true,
                  iconEnabledColor: Colors.black,
                  style: TextStyle(color: Colors.red, fontSize: 16),
                  dropdownColor: Colors.grey,
                  focusColor: Colors.black,
                  value: initialValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: itemList.map((String items) {
                    return DropdownMenuItem
                    <String>(value: items, child: Text(items));
                  }
                  ).toList(),
                  onChanged: (String? newValue) {

                    setState(() {
                      initialValue = newValue!;

                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
      );
  }
}
*/


/*void main() {
  runApp(
    new MaterialApp(
      home: Testscreen(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class Testscreen extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Testscreen> {
  String initialValue = 'Select Standard';

  var itemList = [
    'Select Standard',
    'Std1',
    'Std2',
    'Std3',
    'Std4',
    'Std5',
    'Std6',
    'Std7'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(

      body: Container(
       // color: Colors.grey,
        height: size.height,
        width: size.width,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 0),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            new BoxShadow(color: Colors.white),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey, width: 0),
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  new BoxShadow(color: Colors.red),
                ],
              ),
               margin: EdgeInsets.symmetric(horizontal: 8),
               child: DropdownButtonHideUnderline(
                 child: DropdownButton(
                 */ /*  hint:Text("Hello"),*/ /*
                  //dropdownColor: Colors.red,
                  //isExpanded: true,
                  iconEnabledColor: Colors.black,
                  elevation: 8,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  dropdownColor: Colors.grey,
                  focusColor: Colors.black,
                  value: initialValue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: itemList.map((String items) {
                    return DropdownMenuItem
                    <String>(value: items, child: Text(items));
                  }
                  ).toList(),
                  onChanged: (String? newValue) {

                    setState(() {
                      initialValue = newValue!;

                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
      );
  }
}*/


/*
class Testscreen extends StatefulWidget {
  @override
  _TestscreenState createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
    String? _chosenValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDown'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red, width: 0),
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              new BoxShadow(color: Colors.green),
            ],
          ),
          padding: const EdgeInsets.all(0.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: DropdownButton<String>(
              value: _chosenValue,
              elevation: 8,
              style: TextStyle(color: Colors.black),

              items: <String>[
                'Android',
                'IOS',
                'Flutter',
                'Node',
                'Java',
                'Python',
                'PHP',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              hint: Text(
                "Please choose a langauage",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              onChanged: (String? value) {
                setState(() {
                  _chosenValue = value!;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}


*/


