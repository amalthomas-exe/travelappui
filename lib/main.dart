import 'package:flutter/material.dart';
import 'package:weatherapp/pages/navPages/mainPage.dart';
import 'package:weatherapp/pages/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
