import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../fonts.dart';
import '../providers/news.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routeName = '/news-detail-screen';

  @override
  Widget build(BuildContext context) {
    final newsId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedNews = Provider.of<News>(context, listen: false).findById(newsId);
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedNews.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 221,
              child: Image.network(
                  loadedNews.thumbnailImageUrl),
            ),
            Text(loadedNews.title,style: TextStyles.title),
            Container(
              height: 30,
              child: Row(
                children: [
                  // Text(loadedNews.uploadTime.toString()),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye),
                      Text(loadedNews.views.toString()),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text(loadedNews.likes.toString()),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              child: Center(
                child: Text(
                  loadedNews.description,
                  style: TextStyles.body,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
