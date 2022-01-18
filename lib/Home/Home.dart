import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:project_diva2/widget/navigation_drawer_widget.dart';

// Home_body
import './screens/home_hot_screen.dart';
import './screens/home_latest_screen.dart';
import './screens/home_subscribed_screen.dart';
<<<<<<< HEAD
import './widgets/home_appbar.dart';
import '../widget/navigation_drawer_widget.dart';
=======
>>>>>>> a4538caea0ac2e3ba39607f7bf4d1717d11a57ce

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
    GlobalKey<ScaffoldState> _Drawerkey = GlobalKey();
    // sub_appbar 入口
    var homebodys = [
      HomeLatest(),
      HomeSubscribe(),
      HomeHot(),
    ];

    var bodys = [
      TabBarView(
        children: homebodys,
        controller: _tabController,
      ),
    ];

    return Scaffold(
      key: _Drawerkey,
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        leading: Builder(builder: (BuildContext context) {
          return TextButton(
              onPressed: () {
                _Drawerkey.currentState!.openDrawer();
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
                padding: EdgeInsets.only(left: 10.0),
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
        // titleSpacing: 0,
        // // Appbar 本体
        // title: HomeAppBar(),

        // Tab 本体
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 30),
          child: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            indicatorColor: Colors.amber,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('最新'),
                  )),
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('关注'),
                  )),
              Container(
                  height: 30,
                  child: Tab(
                    icon: Text('热门'),
                  ))
            ],
            controller: _tabController,
          ),
        ),
      ),
      drawer: NavigationDrawerWidget(),
      body: bodys[_currentIndex],
    );
  }
}
//  保留测试
// Widget _swiperBuilder(BuildContext context, int index) {
//   var images = [
//     "https://i0.hdslb.com/bfs/archive/98bd350a5910f63fc4b3119f3122f7a9840ddffa.jpg",
//     "https://i0.hdslb.com/bfs/sycp/creative_img/201903/cf1f947a3a08a29fc8918a7eb37b60da.jpg",
//     "https://i0.hdslb.com/bfs/sycp/creative_img/201903/9e46721bde13c743d63b55d82be1d113.jpg",
//     "https://i0.hdslb.com/bfs/archive/40462bdb70b72ccd29e5799de309f35842151e1b.jpg",
//     "https://i0.hdslb.com/bfs/archive/07c5efa52fdfaa828ad00313fc8053c13fd221f1.jpg",
//   ];
//   return (ClipRRect(
//           borderRadius: BorderRadius.all(Radius.circular(10.0)),
//           child: Container(
//             child: Image.network(
//               images[index],
//               height: 150.0,
//               scale: 0.1,
//               fit: BoxFit.cover,
//             ), // 用Container实现图片圆角的效果
//           ))
//       //          Image.network( images[index],height: 200.0, )
//       );
// }
