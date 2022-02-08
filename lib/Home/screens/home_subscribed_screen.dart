import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class HomeSubscribe extends StatefulWidget {
  HomeSubscribe({Key? key}) : super(key: key);

  @override
  _HomeSubscribeState createState() => _HomeSubscribeState();
}

class _HomeSubscribeState extends State<HomeSubscribe>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }


  Widget _swiperBuilder(BuildContext context, int index) {
    var images = [
      'https://i0.hdslb.com/bfs/archive/2bcdd16080a1b741fb18ea9e2b2edb942f236389.jpg',
      "https://i0.hdslb.com/bfs/archive/5dea26a8ef8d5410b3e2e9861638bf46eeb70569.jpg",
      "https://i0.hdslb.com/bfs/archive/4cf45546da8f6a04321019c7ae83bcc3d1a8259e.jpg",
      "https://i0.hdslb.com/bfs/archive/a4758eac761305040574be94e4909d4b6414e612.jpg",
      "https://i0.hdslb.com/bfs/archive/1d5cd0e2ac820f68db273f5d53168a429fa83182.jpg",
    ];

    return (Container(
      child: ClipRRect(
        child: Image.network(
          images[index],
          height: 150.0,
          scale: 0.1,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            children: <Widget>[
              Container(
                height: 150.0,
                padding: EdgeInsets.all(5.0),
                alignment: Alignment(0, 0),
                child: Swiper(
                  layout: SwiperLayout.DEFAULT,
                  itemBuilder: _swiperBuilder,
                  itemCount: 5,
                  pagination: new SwiperPagination(
                      alignment: Alignment.bottomRight,
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.white,
                        activeColor: Colors.red,
                      )),
                  scrollDirection: Axis.horizontal,
                  autoplay: true,
                  onTap: (index) => print('点击了第$index个'),
                ),
              ),
            ],
          );
        });
  }
}
