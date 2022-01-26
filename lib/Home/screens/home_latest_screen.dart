import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:provider/provider.dart';

import './news_detail_screen.dart';
import '../providers/news.dart';
import '../providers/single_news.dart';
import '../providers/news_items.dart';


class HomeLatest extends StatefulWidget {
  HomeLatest({Key? key}) : super(key: key);

  @override
  _HomeLatestState createState() => _HomeLatestState();
}

class _HomeLatestState extends State<HomeLatest>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  var _isInit = true;

  @override
  void initState() {
    // Future.delayed(Duration.zero).then((_) {
    //   Provider.of<News>(context, listen: false).fetchNews();
    // });
    _controller = AnimationController(vsync: this);
    super.initState();
  }

    @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<News>(context).fetchNews().then((_) {
      });
    }

    super.didChangeDependencies();
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
    final newsData = Provider.of<News>(context);
    final news = newsData.getnews;
    print(news.length);
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
            
            // print(news);
            return Container(
              //              color: Colors.teal,
              //                color: Colors.grey,
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              child: new ListView.builder(
                itemCount: news.length,
                shrinkWrap: true,
                physics: new NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) => ChangeNotifierProvider.value(
                  
                  value: news[index],
                  child: NewsItems(
                    // news[index].id,
                    // news[index].title,
                    // news[index].description,
                    // news[index].views,
                    // news[index].likes,
                    // news[index].tags,
                    // news[index].thumbnailImageUrl,
                  )
              ),
            ));
          }
        });
  }
}
