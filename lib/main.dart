import 'package:flutter/material.dart';
import 'package:project_diva2/nav.dart';
import 'package:project_diva2/Home/Home.dart';

// import 'package:project_diva2/pages/whatever.dart';
// import 'package:project_diva2/widget/navigation_drawer_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BottomNavigation',
      theme: new ThemeData(
        primaryColor: Colors.white,
      ),
      routes: {
        //测试用  "new_page": (context) => NewRoute(),
        "/": (context) => Nav(),
      },
    );
  }
}
