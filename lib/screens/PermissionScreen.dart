import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page_transition/page_transition.dart';

import 'Home%20screen/HomeBottomappbar.dart';
import 'Home%20screen/HomeScreen.dart';
import 'widgets/start_button.dart';
import 'package:sizer/sizer.dart';

class PermissionScreen extends StatefulWidget {
  @override
  _PermissionScreenPageState createState() => _PermissionScreenPageState();
}

class _PermissionScreenPageState extends State<PermissionScreen> {
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
        )),
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.h,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 2.w),
                  child: Text(
                    'Deny permission\n- - - - - - - - - - - - -',
                    style: TextStyle(
                      fontFamily: 'Oxygen',
                      fontSize: 11.sp,
                      color: Colors.white.withOpacity(0.41),
                      fontWeight: FontWeight.w400,
                      // decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.dotted,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 7.w,
                ),
                child: Text(
                  'We take the',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 19.sp,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 7.w, top: 1.h, bottom: 2.h),
                child: Text(
                  'following permissions',
                  style: TextStyle(
                    fontFamily: 'Mukta',
                    fontSize: 19.sp,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.8),
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              PermissionsBuilder(
                  permissionIcon: Icons.phone_android_outlined,
                  permissionName: 'phone state permission',
                  permissionType: 'mandatory',
                  permissionDetails:
                      'Lorem Ipsum dolor sit amet Lorem ipsum Lorem ipsum  ipsum ipsum Lorem ipsum dolor sit amet Lorem ipsum'),
              PermissionsBuilder(
                permissionIcon: Icons.sms,
                permissionName: 'sms permission',
                permissionType: 'mandatory',
                permissionDetails:
                    'Lorem Ipsum dolor sit amet Lorem ipsum Lorem ipsum  ipsum ipsum Lorem ipsum dolor sit amet Lorem ipsum',
              ),
              PermissionsBuilder(
                  permissionIcon: Icons.location_on,
                  permissionMandatory: false,
                  permissionName: 'location permission',
                  permissionType: 'mandatory',
                  permissionDetails:
                      'Lorem Ipsum dolor sit amet Lorem ipsum Lorem ipsum  ipsum ipsum Lorem ipsum dolor sit amet Lorem ipsum'),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(bottom: 3.h),
                      child: InkWell(
                          child: StartButton(),
                          onTap: () {
                            Navigator.of(context).pushReplacement(
                                PageTransition(
                                    child: HomeBottomappbar(),
                                    type: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 800),
                                    reverseDuration:
                                        Duration(milliseconds: 800)));
                          }),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}

class PermissionsBuilder extends StatelessWidget {
  const PermissionsBuilder({
    Key? key,
    required this.permissionName,
    required this.permissionType,
    required this.permissionDetails,
    required this.permissionIcon,
    this.permissionMandatory = true,
  }) : super(key: key);

  final String permissionName;
  final String permissionType;
  final String permissionDetails;
  final IconData permissionIcon;
  final bool permissionMandatory;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 1.h),
      child: Column(
        children: [
          ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
              leading: Icon(
                permissionIcon,
                color: Colors.white.withOpacity(.31),
                size: 25.sp,
              ),
              title: Text(permissionName,
                  style: TextStyle(
                    fontFamily: 'Oxygen',
                    fontSize: 11.sp,
                    letterSpacing: 1,
                    color: Colors.white.withOpacity(0.80),
                    fontWeight: FontWeight.w400,
                  )),
              trailing: permissionMandatory
                  ? Container(
                      alignment: Alignment.center,
                      height: 7.w,
                      width: 10.h,
                      decoration: BoxDecoration(
                        color: Color(0xff002353),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        permissionType,
                        style:
                            TextStyle(color: Colors.blueGrey, fontSize: 10.sp),
                      ),
                    )
                  : SizedBox()),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20.w, right: 5.w),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              permissionDetails,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: 'Oxygen',
                fontSize: 10.sp,
                letterSpacing: .5,
                height: 1.5,
                color: Colors.white.withOpacity(0.2),
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
