import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:sizer/sizer.dart';

class Addchildscreen extends StatefulWidget {
  @override
  _AddchildscreenState createState() => _AddchildscreenState();
}

enum FavoriteMethod { son, daughter, others,none }

FavoriteMethod _method = FavoriteMethod.none;

class _AddchildscreenState extends State<Addchildscreen> {
  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    depth: 4,
                    lightSource: LightSource.topLeft,
                    color: Colors.white),
                child: Container(
                  height: 26.h,
                  decoration: BoxDecoration(
                    color: Color(0xffD1D9E6),
                    boxShadow: [
                      new BoxShadow(color: Color(0xffb9b9bd)),
                    ],
                  ),
                  child: Stack(
                    fit: StackFit.loose,
                    children: [
                      Row(
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(5.w, 6.h, 0, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Color(0xffE2E5E5),
                                  /*boxShadow: [
                                      BoxShadow(
                                          spreadRadius: 3,
                                          blurRadius: 10,
                                          offset: Offset(-1, -1),
                                          color: Colors.white)
                                    ]*/
                                ),
                                child: Icon(
                                  Icons.arrow_back,

                                  color: Colors.white,
                                ),
                                width: 5.h,
                                height: 10.w,
                              ),
                            ),
                            Container(
                              height: 3.h,
                              width: 20.w,
                              margin: EdgeInsets.fromLTRB(7.w, 5.h, 2.w, 0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Color(0xfff2f2f2),
                              ),
                              child: Center(
                                child: Text(
                                  "HELP?",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontFamily: 'Mukta',
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ]),
                      Positioned(
                        top: 10.h,
                        left: 40.w,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              SizedBox(
                                height: 0,
                              ),
                              Center(
                                child: GestureDetector(
                                  onTap: () {
                                    _showPicker(context);
                                  },
                                  child: Neumorphic(
                                    style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.roundRect(
                                            BorderRadius.circular(8)),
                                        shape: NeumorphicShape.flat,
                                        depth: 1,
                                        intensity: 10,
                                        shadowLightColor: Colors.white,
                                        lightSource: LightSource.topLeft,
                                        // color: Colors.white
                                        color: Color(0xffecf0f2)),
                                    child: CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Colors.transparent,
                                        child: _image != null
                                            ? ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                child: Image.file(
                                                  _image!,
                                                  height: 5.h,
                                                  fit: BoxFit.fitHeight,
                                                  alignment: Alignment.center,
                                                ),
                                              )
                                            : Icon(
                                                FontAwesomeIcons
                                                    .solidUserCircle,
                                                size: 50.sp,
                                          color: Color(0xff97A7C3),
                                              )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: 18.h,
                        left: 58.w,
                        child: Icon(
                          Icons.camera_alt,
                          color: Colors.grey[800],
                        ),
                      ),

                      SizedBox(
                        height: 1.h,
                      ),
                      Positioned(
                        top: 21.h,
                        left: 39.w,
                        child: Text(
                          "upload photo",
                          style: TextStyle(
                              color: Colors.blueGrey.withOpacity(0.6),
                              fontFamily: 'Mukta',
                              fontSize: 13.sp,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 5.w, top: 1.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 1.w),
                      child: Icon(
                        Icons.contacts_rounded,
                        color: Colors.blue.shade800,
                      ),
                    ),
                    Text(
                      "From contacts",
                      style: TextStyle(
                          color: Colors.blue.shade800,
                          fontFamily: 'Mukta',
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w900),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w, top: 1.h),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "ADD YOUR CHILD",
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Mukta',
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w800),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              Neumorphic(
                margin: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                style: NeumorphicStyle(
                    depth: NeumorphicTheme.embossDepth(context),
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
                    intensity: 10.0,
                    lightSource: LightSource.topLeft,
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            width: 25.w,
                            child: Column(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/selectchild.png",
                                    height: 7.h,
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.w),
                                        child: Text(
                                          "Son",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'Mukta',
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Checkbox(
                                        value: _method==FavoriteMethod.son?true:false,
                                        shape: CircleBorder(),
                                        /*kotlin, swift*/
                                        onChanged: (value) {
                                          setState(() {
                                            _method=FavoriteMethod.son;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            width: 25.w,
                            child: Column(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/selectchild.png",
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: 2.w, top: 0.5.h),
                                        child: Text(
                                          "Daughter",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'Mukta',
                                              fontSize: 7.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Checkbox(
                                        value: _method==FavoriteMethod.daughter?true:false,
                                        shape: CircleBorder(),
                                        /*kotlin, swift*/
                                        onChanged: (value) {
                                          setState(() {
                                            _method=FavoriteMethod.daughter;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.blueGrey, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]),
                            child: Column(
                              children: [
                                Container(
                                  width: 15.w,
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    "assets/images/selectchild.png",
                                    height: 2.h,
                                  ),
                                ),
                                Container(
                                  height: 3.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                    ),
                                    color: Colors.white,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 2.w),
                                        child: Text(
                                          "Others",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontFamily: 'Mukta',
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Checkbox(
                                        value: _method==FavoriteMethod.others?true:false,
                                        shape: CircleBorder(),
                                        /*kotlin, swift*/
                                        onChanged: (value) {
                                          setState(() {
                                            _method=FavoriteMethod.others;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Neumorphic(
                      margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                      style: NeumorphicStyle(
                          depth: NeumorphicTheme.embossDepth(context),
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          intensity: 10.0,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffCFD6E2).withOpacity(0.3)),
                      child: Container(
                        height: 8.h,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Container(
                            color: Colors.transparent,
                            width: 40.w,
                            child: TextFormField(
                              cursorColor: Colors.blueGrey,
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Colors.blueGrey),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),

                                hintText: "Name",
                                hintStyle: TextStyle(
                                    color: Colors.blueGrey.withOpacity(0.7),
                                    fontFamily: 'Mukta',
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Neumorphic(
                      margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                      style: NeumorphicStyle(
                          depth: NeumorphicTheme.embossDepth(context),
                          shape: NeumorphicShape.concave,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          intensity: 10.0,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffCFD6E2).withOpacity(0.3)),
                      child: Container(
                        height: 8.h,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Container(
                            color: Colors.transparent,
                            width: 50.w,
                            child: TextFormField(
                              cursorColor: Colors.blueGrey,
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Colors.blueGrey),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 0, bottom: 0, top: 0, right: 0),
                                hintText: "Birthday(dd/mm/yyyy)",
                                hintStyle: TextStyle(
                                    color: Colors.blueGrey.withOpacity(0.7),
                                    fontFamily: 'Mukta',

                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Neumorphic(
                      margin: EdgeInsets.fromLTRB(5.w, 1.h, 5.w, 0),
                      style: NeumorphicStyle(
                          depth: NeumorphicTheme.embossDepth(context),
                          shape: NeumorphicShape.convex,
                          boxShape: NeumorphicBoxShape.roundRect(
                              BorderRadius.circular(20)),
                          intensity: 10.0,
                          lightSource: LightSource.topLeft,
                          color: Color(0xffCFD6E2).withOpacity(0.3)),
                      child: Container(
                        height: 8.h,
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 7.w),
                          child: Container(
                            color: Colors.transparent,
                            width: 50.w,
                            child: TextFormField(
                              cursorColor: Colors.blueGrey,
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Colors.blueGrey),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                border: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                contentPadding: EdgeInsets.only(
                                    left: 0, bottom: 0, top: 0, right: 0),
                                hintText: "Phone Number",
                                hintStyle: TextStyle(
                                    color: Colors.blueGrey.withOpacity(0.7),
                                    fontFamily: 'Mukta',
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 7.w, vertical: 5.h),
                          height: 6.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xff2E52CA),
                            //color: const Color.fromARGB(255, 253, 188, 51),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            'ADD  CHILD',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Oxygen',
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        onTap: () {
                          /*  Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Paymentmethodsscreen()),
                      );*/
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        _imgFromGallery();
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      _imgFromCamera();
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  _imgFromCamera() async {
    PickedFile? image = await ImagePicker.platform.pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      /* maxWidth: 1800,
      maxHeight: 1800,*/
    );

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }

  _imgFromGallery() async {
    PickedFile? image = await ImagePicker.platform.pickImage(
      source: ImageSource.gallery,
      imageQuality: 50,
    );

    if (image != null) {
      setState(() {
        _image = File(image.path);
      });
    }
  }
}
