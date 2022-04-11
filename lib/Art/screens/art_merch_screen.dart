import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class ArtMerch extends StatefulWidget {
  ArtMerch({Key? key}) : super(key: key);

  @override
  _ArtMerchState createState() => _ArtMerchState();
}

class _ArtMerchState extends State<ArtMerch> with SingleTickerProviderStateMixin {
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

  Widget sasas(BuildContext context, int index) {
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
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 1,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            children: <Widget>[
              Container(
                height: 150.0,
                padding: EdgeInsets.symmetric(vertical: 5.0),
                alignment: Alignment(0, 0),
                child: Swiper(
                    layout: SwiperLayout.DEFAULT,
                    itemBuilder: _swiperBuilder,
                    itemCount: 5),
              ),
            ],
          );
        },
      ),
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
