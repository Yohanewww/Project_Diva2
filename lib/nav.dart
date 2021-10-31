import 'package:flutter/material.dart';

// Pages
import 'package:project_diva2/pages/Art.dart';
import 'package:project_diva2/pages/Journey.dart';
import 'package:project_diva2/pages/Home.dart';
import 'package:project_diva2/pages/Luckydraw.dart';
import 'package:project_diva2/pages/Profile.dart';

// Pages_AppBar
import 'package:project_diva2/pages_appbar/Art_appbar.dart';
import 'package:project_diva2/pages_appbar/Journey_appbar.dart';
import 'package:project_diva2/pages_appbar/Home_appbar.dart';
import 'package:project_diva2/pages_appbar/Luckydraw_appbar.dart';
import 'package:project_diva2/pages_appbar/Profile_appbar.dart';

class Nav extends StatefulWidget {
  Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List _listPageData = [
    Art(),
    Journey(),
    Home(),
    Luckydraw(),
    Profile(),
  ];

  List _listPageAppBar = [
    ArtAppBar(),
    JourneyAppBar(),
    HomeAppBar(),
    LuckydrawAppBar(),
    ProfileAppBar(),
  ];

  void _onItemTap(int index) {
    if (index != _selectedIndex) {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: this._listPageAppBar[_selectedIndex],
      ),
      body: this._listPageData[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_album),
            label: '绘圈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_rounded),
            label: '旅游',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: '抽奖',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '我的',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
      ),
    );
  }
}
