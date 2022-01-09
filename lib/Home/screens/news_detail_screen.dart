import 'package:flutter/material.dart';

import '../providers/news_items.dart';

class NewsDetailScreen extends StatelessWidget {
  static const routeName = '/news-detail-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Title'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 221,
              child: Image.network(
                  'https://media.discordapp.net/attachments/844483893683814423/896050391978999889/info2.jpg?width=1202&height=676'),
            ),
            Container(
              height: 30,
              child: Row(
                children: [
                  Text(DateTime.now().toString()),
                  Expanded(child: Container()),
                  Row(
                    children: [
                      Icon(Icons.remove_red_eye),
                      Text('54,224'),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.thumb_up),
                      Text('54,224'),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 400,
              child: Center(
                child: Text(
                  'Content',
                  style: TextStyle(fontSize: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
