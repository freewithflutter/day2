import 'package:day2/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:day2/utill/default.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: kMainColor),
      home: Home(),
    );
  }
}
