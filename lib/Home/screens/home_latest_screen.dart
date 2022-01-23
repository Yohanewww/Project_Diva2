import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:provider/provider.dart';

import './news_detail_screen.dart';
import '../providers/news_items.dart';
import '../providers/single_news_items.dart';
import '../providers/news_items.dart';


class HomeLatest extends StatefulWidget {
  HomeLatest({Key? key}) : super(key: key);

  @override
  _HomeLatestState createState() => _HomeLatestState();
}

class _HomeLatestState extends State<HomeLatest>
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
    final news_data = Provider.of<NewsItems>(context);
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (BuildContext context, int position) {
          if (position == 0) {
            return Column(
              children: <Widget>[
                Container(
                  height: 150.0,
                  padding: EdgeInsets.only(bottom: 5.0),
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
                itemCount: 2,
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        NewsDetailScreen.routeName,
                        arguments:'n1',
                      );
                    },
                    child: Container(
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
                          // Stack(
                          //   children: <Widget>[
                          //     ClipRRect(
                          //       borderRadius: BorderRadius.only(
                          //           topLeft: Radius.circular(5.0),
                          //           topRight: Radius.circular(5.0)),
                          //       child: new Image.network(
                          //         news_data[index].thumbnailImageUrl,
                          //         width: 420,
                          //         height: 320,
                          //         fit: BoxFit.cover,
                          //       ),
                          //     ),
                          //     Positioned(
                          //         bottom: 5,
                          //         left: 3.0,
                          //         child: Row(
                          //           mainAxisAlignment:
                          //               MainAxisAlignment.spaceEvenly,
                          //           crossAxisAlignment:
                          //               CrossAxisAlignment.center,
                          //           children: <Widget>[
                          //             Icon(
                          //               Icons.remove_red_eye_outlined,
                          //               size: 20.0,
                          //               color: Colors.white,
                          //             ),
                          //             Text(
                          //               '1630  ',
                          //               style: TextStyle(
                          //                   color: Colors.white,
                          //                   fontSize: 13.0),
                          //             ),
                          //             Icon(
                          //               Icons.thumb_up_off_alt_outlined,
                          //               size: 20.0,
                          //               color: Colors.white,
                          //             ),
                          //             Text(
                          //               ' 96',
                          //               style: TextStyle(
                          //                   color: Colors.white,
                          //                   fontSize: 13.0),
                          //             ),
                          //           ],
                          //         )),
                          //   ],
                          // ),
                          Container(
                            alignment: Alignment.centerLeft,
                            height: 50.0,
                            padding: EdgeInsets.symmetric(horizontal: 3),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(
                                //   videoContents[index],
                                //   style: TextStyle(
                                //       fontSize: 14.0,
                                //       fontWeight: FontWeight.normal),
                                // ),
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
                    ),
                  );
                },
                
              ),
            );
          }
        });
  }
}
