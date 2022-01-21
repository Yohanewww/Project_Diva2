import 'package:flutter/material.dart';

// Pages
import 'package:project_diva2/Art/Art.dart';
import 'package:project_diva2/Journey/Journey.dart';
import 'package:project_diva2/Home/home.dart';
import 'package:project_diva2/Luckydraw/Luckydraw.dart';
import 'package:project_diva2/Profile/Profile.dart';

import 'widget/sidebar_drawer.dart';

// ROUTES
class Nav extends StatefulWidget {
  Nav({Key? key}) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 2;
  List _listPageData = [
    Art(),
    Journey(),
    Home(),
    Luckydraw(),
    Profile(),
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
    GlobalKey<ScaffoldState> _drawerkey = GlobalKey();
    return Scaffold(
      key: _drawerkey,
      drawer: SidebarDrawerWidget(),
      appBar: AppBar(
          
        leading: Builder(builder: (BuildContext context) {
            return TextButton(
                onPressed: () {
                  _drawerkey.currentState!.openDrawer();
                },
                child: ClipOval(
                  child: Image.network(
                    "https://cdn.discordapp.com/emojis/771350520954617877.webp?size=96&quality=lossless",
                    width: 35.0,
                    height: 35.0,
                  ),
                ));
          }),
          primary: true,
          title: Row(
            children: <Widget>[
              // Image.asset("assets/images/furo.png"),
              // new GestureDetector(
              //   onTap: () {},
              //   child: ClipOval(
              //     child: Image.network(
              //       "https://cdn.discordapp.com/emojis/771350520954617877.webp?size=96&quality=lossless",
              //       width: 35.0,
              //       height: 35.0,
              //     ),
              //   ),
              // ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 0.0, right: 10.0),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 10),
                  width: 200.0,
                  height: 30.0,
                  child: Icon(Icons.search, color: Colors.white54),
                  decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                ),
              ),
              Container(
                width: 40,
                child: Image.asset(
                  "assets/images/qrscan.png",
                  width: 25.0,
                  height: 25.0,
                  color: Colors.white70,
                ),
              )
            ],
          ),
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
