import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

// Home_body
import 'package:project_diva2/pages_body/Home_body/Home_latest.dart';
import 'package:project_diva2/pages_body/Home_body/Home_subscribe.dart';
import 'package:project_diva2/pages_body/Home_body/Home_hot.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _currentIndex = 0;

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

  @override
  Widget build(BuildContext context) {
    var appbarbottomtabs = [
      TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Colors.amber,
        labelColor: Colors.amber,
        unselectedLabelColor: Colors.black,
        tabs: <Widget>[
          Container(
            child: Tab(
              icon: Text(
                '最新',
              ),
            ),
          ),
          Container(
            child: Tab(
              icon: Text(
                '关注',
              ),
            ),
          ),
          Container(
            child: Tab(
              icon: Text(
                '热门',
              ),
            ),
          ),
        ],
        controller: _tabController,
      ),
      null,
      null,
      null,
    ];

    var homebodys = [
      Home_latest(),
      Home_subscribe(),
      Home_hot(),
    ];

    var bodys = [
      TabBarView(
        children: homebodys,
        controller: _tabController,
      ),
    ];

    return Scaffold(
      appBar: appbarbottomtabs[_currentIndex],
      body: bodys[_currentIndex],
    );
  }
}

Widget _swiperBuilder(BuildContext context, int index) {
  var images = [
    "https://i0.hdslb.com/bfs/archive/98bd350a5910f63fc4b3119f3122f7a9840ddffa.jpg",
    "https://i0.hdslb.com/bfs/sycp/creative_img/201903/cf1f947a3a08a29fc8918a7eb37b60da.jpg",
    "https://i0.hdslb.com/bfs/sycp/creative_img/201903/9e46721bde13c743d63b55d82be1d113.jpg",
    "https://i0.hdslb.com/bfs/archive/40462bdb70b72ccd29e5799de309f35842151e1b.jpg",
    "https://i0.hdslb.com/bfs/archive/07c5efa52fdfaa828ad00313fc8053c13fd221f1.jpg",
  ];
  return (ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Container(
            child: Image.network(
              images[index],
              height: 150.0,
              scale: 0.1,
              fit: BoxFit.cover,
            ), // 用Container实现图片圆角的效果
          ))
      //          Image.network( images[index],height: 200.0, )
      );
}
