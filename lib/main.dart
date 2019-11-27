import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Habit Shaper',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Habit Shaper'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
