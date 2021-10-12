import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../Track%20screen/progressBar.dart';
import 'package:sizer/sizer.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: TrackStatus(),
    );
  }
}

class TrackStatus extends StatefulWidget {
  @override
  TrackStatusState createState() => TrackStatusState();
}

class TrackStatusState extends State<TrackStatus> with TickerProviderStateMixin {
  // final timerDuration = Duration(milliseconds: 2500);

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0ecf0f2),
      //color:Color(0xff0ecf0f2),
      appBar: AppBar(
        backgroundColor: Colors.blue[800], // Title
        title: Text("Track Status",style:
        TextStyle(color: Colors.white, fontSize: 13.sp),),
        leading: InkWell( onTap: () {
          Navigator.pop(context);
        },
            child: Icon(Icons.arrow_back_ios_outlined)
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,

        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                offset: Offset(-6.0, -6.0),
                blurRadius: 8,
              ),
              /*  BoxShadow(
          color: Colors.black.withOpacity(0.1),
          offset: Offset(6.0, 6.0),
          blurRadius: 8.0,
        ),*/
            ],
            //color:Color(0xff0129afa),
            color: Colors.transparent,

            borderRadius: BorderRadius.circular(8.0),
          ),
          height: 30.h,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Neumorphic(
              style: NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(8)),
                  shape: NeumorphicShape.flat,
                  depth: 2,
                  intensity: 10,
                  shadowLightColor: Colors.white,
                  lightSource: LightSource.topLeft,
                  color: Colors.white
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 1.h,left: 5.w),
                    alignment: Alignment.topLeft,
                    child: Text(
                      'HDFC CREDIT CARD',
                      style:
                      TextStyle(color: Color.fromRGBO(0, 0, 0, 0.8), fontSize: 9.sp),
                    ),
                  ),  Container(
                    margin: EdgeInsets.only(top: 0,left: 5.w),

                    alignment: Alignment.topLeft,
                    child: Text(
                      '4TH JUNE 2021',
                      style:
                      TextStyle(color: Color.fromRGBO(0, 0, 0, 0.2), fontSize: 9.sp),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.black,
                      height: 0,
                    ),
                  ),


                  // Timer(),
                  ProgressBar(),
                  //SizedBox(height: 50),
                  // AvatarAndText(),
                  //SizedBox(height: 50),
                  Container(
                    alignment: Alignment.center,
                    child: InkWell(onTap: () {
                      /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PancardScreen()),
                      );*/
                    },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.symmetric(horizontal: 2.w,vertical: 2.h),
                        height: 5.h,
                        width: 30.w,
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
                          //color:Color(0xff0129afa),
                          color:Color(0xfffe4f4e),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        //alignment: Alignment.center,
                        child:  Text(
                          'RAISE TICKET',
                          style: TextStyle(color: Colors.white, fontSize: 9.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


/*class TrackStatus extends StatefulWidget {
  TrackStatus() : super();

  //final String title = "Stepper Demo";

  @override
  TrackStatusState createState() =>TrackStatusState();
}

class TrackStatusState extends State<TrackStatus> {
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
        backgroundColor: Colors.blue[800], // Title
        title: Text("Track Status"),
        leading: Icon(Icons.arrow_back_ios_outlined),
      ),
      // Body
      body: Container(
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            new BoxShadow(color: Colors.transparent,),
          ],
        ),
        child: Container(
          color: Colors.transparent,
          height: 300,

          child: Theme(
            data: ThemeData(
                accentColor: Colors.orange,
                primarySwatch: Colors.orange,
                colorScheme: ColorScheme.light(
                    primary: Colors.orange
                )
            ),
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
      )));
  }
}*/



/*class StepperDemo extends StatefulWidget {
  @override
  _StepperDemoState createState() => _StepperDemoState();
}

class _StepperDemoState extends State<StepperDemo> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Flutter Stepper Demo'),
        centerTitle: true,
      ),
      body:  Container(
        child: Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                physics: ScrollPhysics(),
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue:  continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: new Text('Account'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Email Address'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0 ?
                    StepState.complete : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Address'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Home Address'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Postcode'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1 ?
                    StepState.complete : StepState.disabled,
                  ),
                  Step(
                    title: new Text('Mobile Number'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Mobile Number'),
                        ),
                      ],
                    ),
                    isActive:_currentStep >= 0,
                    state: _currentStep >= 2 ?
                    StepState.complete : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.list),
        onPressed: switchStepsType,
      ),

    );
  }
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.horizontal);
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
    setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }
}*/