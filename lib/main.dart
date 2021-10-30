import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitobxon/style/theme.dart';

import 'screens/login/login_screen.dart';
import 'screens/payment.dart';
import 'screens/children.dart';
import 'screens/home.dart';
import 'screens/splash/splash.dart';
// import 'style/theme.dart';

void main() {
  runApp(MyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kitobxon',
      theme: theme(),
      // home: SplashScreen(),
      // home: HomePage(),
      // home: Children(),
      // home: LogInScreen(),
      home: Payment(),
    );
  }
}


