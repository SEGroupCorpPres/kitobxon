import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../login/login_screen.dart';
import 'slide_transition_animation.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _a = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 1000), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(Duration(milliseconds: 2000), () {
      Navigator.of(context)
          .pushReplacement(SlideTransitionAnimation(LogInScreen()));
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? _width : 0,
            height: _height,
            color: Theme.of(context).primaryColor,
          ),
          Center(
            child: Text(
              'Kitobxon',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
