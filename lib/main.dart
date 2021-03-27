import 'package:drinkawa_v2/screens/screen_1.dart';
import 'package:drinkawa_v2/screens/screen_4.dart';
import 'package:flutter/material.dart';

import 'screens/home_page.dart';
import 'screens/screen_2.dart';
import 'screens/screen_5.dart';
import 'screens/screen_new3.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Screen1(),
      theme: ThemeData(fontFamily: "Sriracha-Regular"),
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => Screen1(),
        "/second": (BuildContext context) => Screen2(),
        "/third": (BuildContext context) => Screen3(),
        "/forth": (BuildContext context) => Screen4(),
        "/fifth": (BuildContext context) => Screen5(),
        "/sixth": (BuildContext context) => Screen6(),
      },
    );
  }
}
