import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:provider/provider.dart';

import '../../fonts.dart';
import '../providers/news.dart';
import 'package:download_assets/download_assets.dart';

class NewsDetailScreen extends StatefulWidget {
  NewsDetailScreen({Key? key}) : super(key: key);
  static const routeName = '/news-detail-screen';

  
  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
 
  @override
    void initState() {
      // Future.delayed(Duration.zero).then((_) {
      //   Provider.of<News>(context, listen: false).fetchNews();
      // });
      // print('sasadasda');
      super.initState();
    }

    @override
    void didChangeDependencies() {  
      super.didChangeDependencies();
    }
    @override
    Widget build(BuildContext context) {
      
      Codec<String, String> stringToBase64 = utf8.fuse(base64);
      final newsId = ModalRoute.of(context)?.settings.arguments as String;
      final loadedNews = Provider.of<News>(context, listen: false).findById(newsId);
      // final response = http.read(Uri.parse(loadedNews.markdownUrl));
      // final extractedData = json.decode(response.body);
      final markdownData = stringToBase64.decode(loadedNews.markdownData);

   
    return Scaffold(
      appBar: AppBar(
        title: Text(loadedNews.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Container(
            //   height: 221,
            //   child: Image.network(
            //       loadedNews.thumbnailImageUrl),
            // ),
            // Text(
            //   loadedNews.title,
            //   style: TextStyles.title),
            
            Container(
              padding: EdgeInsets.all(5),
              child: MarkdownBody(data: markdownData,),
            ),
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
          
          ],
        ),
      ),
      
    );
  
  

  }
}