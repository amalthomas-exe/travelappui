import 'package:flutter/material.dart';
import 'package:weatherapp/pages/mainPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:weatherapp/pages/navPages/detailsPage.dart';
import 'package:weatherapp/pages/welcomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(392, 875),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ((context, child) {
        return const MaterialApp(
          title: "Travel App",
          debugShowCheckedModeBanner: false,
          home: DetailsPage(),
        );
      }),
    );
  }
}
