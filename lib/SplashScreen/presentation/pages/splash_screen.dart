import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:water/Authentication/presentation/pages/login_screen.dart';
import 'package:water/Base/common/shared_preference_manger.dart';
import 'package:water/Dashboard/presentation/pages/dashboard_screen.dart';

import '../../../../Base/common/navigtor.dart';
import '../../../../Base/common/shared.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences sharedPreferences;
 // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  @override
  void initState() {
/*    _firebaseMessaging.getToken().then((String? token) {
      assert(token != null);
      Shared.device_token = token!;
      print("Device Token: $token");
    });*/
    super.initState();
    authetication_fun();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/images/GroupLogo.png"),
      ),
    );
  }

  void _getCurrentUser() async {
    try {
       await sharedPreferenceManager.readInt(CachingKey.USER_ID).then((value) async {
        if (value != null) {
       await sharedPreferenceManager.readString(CachingKey.TYPE).then((value){
            Shared.userType = value == "b2c" ? "B2C" : "B2B";
          });
          customAnimatedPushNavigation(context, DashboardScreen());
        } else {
          customAnimatedPushNavigation(context, const LoginScreen());
        }
      });

    } catch (e) {
      print("e : ${e.toString()}");
      customAnimatedPushNavigation(context, const LoginScreen());
    }
  }
  void authetication_fun() {
    Timer(Duration(seconds: 2), () async {
      try {
        _getCurrentUser();
      } catch (e) {
        _getCurrentUser();
      }
    });
  }
}
