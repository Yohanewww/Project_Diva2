import 'package:flutter/material.dart';

// Art_body
import './screens/art_drawing_screen.dart';
import './screens/art_merch_screen.dart';
import './screens/art_commission_screen.dart';

class Art extends StatefulWidget {
  Art({Key? key}) : super(key: key);
  
  @override
  _ArtState createState() => _ArtState();
}

class _ArtState extends State<Art> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _currentIndex = 0;

  // sub_appbar 控制器
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: 0);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // sub_appbar
  @override
  Widget build(BuildContext context) {

    // sub_appbar 入口
    var artbodys = [
      ArtDrawing(),
      ArtMerch(),
      ArtCommission(),
    ];

    var bodys = [
      TabBarView(
        children: artbodys,
        controller: _tabController,
      ),
    ];

    return Scaffold(
      appBar:  TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.black,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey[700],
            tabs: <Widget>[
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('绘图'),
                  )),
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('周边'),
                  )),
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('委托'),
                  ))
            ],
            controller: _tabController,
          ),
 
      body: bodys[_currentIndex],
    );
  }
}