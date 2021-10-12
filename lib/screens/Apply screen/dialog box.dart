import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
class DialogboxScreen extends StatefulWidget {

  @override
  _DialogboxScreenPageState createState() => _DialogboxScreenPageState();
}

class _DialogboxScreenPageState extends State<DialogboxScreen> {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        child: Center(
          child: RaisedButton(
            child: const Text('showModalBottomSheet'),
            onPressed: () {

              showModalBottomSheet(
                  context: context,
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),  bottomRight: Radius.circular(20.0)
                    ),
                  ),
                  builder: (context) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          new BoxShadow(color: Color(0xffe8f9ff)),
                        ],
                      ),
                      //alignment: Alignment.center,
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 40),
                      height: 400,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[

                             Container(
                               margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                               child: Text('16 DIGIT will never call you',
                                   style: TextStyle(color: Colors.blue,
                                     fontFamily: 'Mukta',
                                     fontSize: 16,
                                     fontWeight: FontWeight.w700,)),
                             ),

                             Container(
                               margin: EdgeInsets.fromLTRB(20, 0, 20, 10),
                               child: Text('Without your consent or permission',
                                   style: TextStyle(color: Colors.black,fontFamily: 'Mukta',
                                     fontSize: 20,
                                     fontWeight: FontWeight.w700,)),
                             ), Container(
                            height: 140,
                              width: 150,
                              child: Image.asset('assets/images/call-cut.png',
                                fit: BoxFit.fill,)

                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child: Text('Please help us manage, your prefences',
                                style: TextStyle(color: Colors.black,
                                  fontFamily: 'Mukta',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,)),
                          ),Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              Container(
                                margin: EdgeInsets.fromLTRB(60, 20, 0, 10),
                                alignment: Alignment.center,
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, width: 0),
                                  borderRadius: BorderRadius.circular(8),

                                ),


                                child: Text('Dismiss',style: TextStyle(color: Colors.blue[800],
                                  fontFamily: 'Mukta',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,)),
                              ),
                              Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.fromLTRB(0, 20, 60, 10),
                                width: 100,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 0),
                                  borderRadius: BorderRadius.circular(8),
                                  boxShadow: [
                                    new BoxShadow(color: Colors.blue),
                                  ],

                                ),


                                child: Text('Manage',style: TextStyle(color: Colors.white,
                                  fontFamily: 'Mukta',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,)),
                              ),

                            ],
                          ),


                        ],
                      ),
                    );
                  });




            },
          ),
        ),
      );

  }
}
