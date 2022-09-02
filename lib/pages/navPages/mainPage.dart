import 'package:flutter/material.dart';
import 'package:weatherapp/pages/navPages/barItemsPage.dart';
import 'package:weatherapp/pages/navPages/homePage.dart';
import 'package:weatherapp/pages/navPages/myPage.dart';
import 'package:weatherapp/pages/navPages/searchPage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    BarItemsPage(),
    SearchPage(),
    MyPage()
  ];

int currentIndex = 0;

void onTap(int index){
  setState(() {
    currentIndex = index;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0.sp,
        selectedFontSize: 0.sp,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.apps),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart),label: "Bar"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "My"),
        ],
      ),
      body: pages[currentIndex],
    );
  }
}