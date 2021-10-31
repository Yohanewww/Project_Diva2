import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

class Home_latest extends StatefulWidget {
  Home_latest({Key? key}) : super(key: key);

  @override
  _Home_latestState createState() => _Home_latestState();
}

class _Home_latestState extends State<Home_latest>
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
    var videoImages = [
      'https://media.discordapp.net/attachments/844483893683814423/896050391978999889/info2.jpg?width=1202&height=676',
      'https://i1.hdslb.com/bfs/archive/416a3ee705b2ac544ff76f60af52f6655bf6eb42.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/00573099a2c86569ea68380bb44ccf91b0ca8619.png@320w_200h.png',
      'https://i2.hdslb.com/bfs/archive/c781bb917d148a18dc0981ee8a8abdead75fb95f.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/515eb7f4ca826304eeadbd51e124e27ecbfd1e17.jpg@320w_200h.jpg',
      'https://i1.hdslb.com/bfs/archive/e22ff91e9363d48f03d86ed00185bcda10181dee.jpg@320w_200h.jpg',
      'https://i0.hdslb.com/bfs/archive/9eca86255ef1838886b4b5f1c0662d3e9f634410.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/be9686d5bb15d4ce330f73ee6acd0303a9170b5b.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/bdd67d993c31ac4a9bc5054367229bad40c4000a.jpg@320w_200h.jpg',
      'https://i2.hdslb.com/bfs/archive/a90dd608483742898f02e45ec039097446cdcd56.jpg@320w_200h.jpg'
    ];

    var videoContents = [
      '「世界頂尖的暗殺者轉生為異世界貴族」',
      '六千英镑就能买到劳斯莱.',
      '【章鱼哥哥&海绵宝宝】',
      '元首对蔡徐坤黑粉的愤怒',
      '6110分继续刚',
      '英雄联盟LEC赛区-春季赛',
      'apex emmm',
      '与仙争鸡',
      '天桥地下的唱见',
      '今天的李先生疲惫了',
    ];
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
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
          } else {
            return Container(
//              color: Colors.teal,

//                color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),

              child: new ListView.builder(
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black54, width: 0.5),
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(1, 1),
                            blurRadius: 1.0,
                          ),
                        ]),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.0),
                                  topRight: Radius.circular(5.0)),
                              child: new Image.network(
                                videoImages[index],
                                width: 420,
                                height: 320,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                                bottom: 5,
                                left: 3.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.remove_red_eye_outlined,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '1630  ',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0),
                                    ),
                                    Icon(
                                      Icons.thumb_up_off_alt_outlined,
                                      size: 20.0,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      ' 96',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13.0),
                                    ),
                                  ],
                                )),
                          ],
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          height: 50.0,
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                videoContents[index],
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal),
                              ),
                              Container(
//                                    color: Colors.yellow,
                                child: Text(
                                  '内容源自：【異世界】',
                                  style: TextStyle(
                                      color: Colors.black45,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: 10,
              ),
            );
          }
        });
  }
}
