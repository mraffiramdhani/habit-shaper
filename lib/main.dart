import 'dart:async';

import 'package:flutter/material.dart';
import 'package:habit_shaper/homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Shaper',
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{
        '/HomeScreen': (BuildContext context) => new HomeScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    body: new Center(
      child: new Image.asset('assets/images/placeholder.png', width: 200.0,),
    ),
  );
  }
}
