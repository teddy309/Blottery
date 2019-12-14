import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:battery/screen/signIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:battery/screen/IntroScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _seen = (prefs.getBool('seen') ?? false);

    if (_seen) {
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => SignIn()));
    } else {
      prefs.setBool('seen', true);
      Navigator.of(context).pushReplacement(
          new MaterialPageRoute(builder: (context) => IntroScreen()));
    }
  }

  @override
  void initState() {
    super.initState();
    new Timer(new Duration(milliseconds: 3000), () {
      checkFirstSeen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0xFF, 0x00, 0x00, 0x75),
      body: Center(
        child: Image(
          image: AssetImage('images/logo.png'), 
          width: 100,
        ),
      ),
    );
  }
}