import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import './single_news.dart';

class News with ChangeNotifier {
  List<SingleNewsItem> _news = [
    // SingleNewsItem(
    //   id: 'n1',
    //   // uploadTime: DateTime.now(),
    //   title: '「世界頂尖的暗殺者轉生為異世界貴族」',
    //   description: '「世界頂尖的暗殺者轉生為異世界貴族」のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://media.discordapp.net/attachments/844483893683814423/896050391978999889/info2.jpg?width=1202&height=676',
    //   tags: ['Anime', '新番'],
    // ),
    // SingleNewsItem(
    //   id: 'n2',
    //   // uploadTime: DateTime.now(),
    //   title: '六千英镑就能买到劳斯莱',
    //   description: '六千英镑就能买到劳斯莱のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i1.hdslb.com/bfs/archive/416a3ee705b2ac544ff76f60af52f6655bf6eb42.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n3',
    //   // uploadTime: DateTime.now(),
    //   title: '【章鱼哥哥&海绵宝宝】',
    //   description: '【章鱼哥哥&海绵宝宝】のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i0.hdslb.com/bfs/archive/00573099a2c86569ea68380bb44ccf91b0ca8619.png@320w_200h.png',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n4',
    //   // uploadTime: DateTime.now(),
    //   title: '元首对蔡徐坤黑粉的愤怒',
    //   description: '元首对蔡徐坤黑粉的愤怒のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i2.hdslb.com/bfs/archive/c781bb917d148a18dc0981ee8a8abdead75fb95f.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n5',
    //   // uploadTime: DateTime.now(),
    //   title: '6110分继续刚',
    //   description: '6110分继续刚のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i0.hdslb.com/bfs/archive/515eb7f4ca826304eeadbd51e124e27ecbfd1e17.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n6',
    //   // uploadTime: DateTime.now(),
    //   title: '英雄联盟LEC赛区-春季赛',
    //   description: '英雄联盟LEC赛区-春季赛のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i1.hdslb.com/bfs/archive/e22ff91e9363d48f03d86ed00185bcda10181dee.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n7',
    //   // uploadTime: DateTime.now(),
    //   title: 'apex emmm',
    //   description: 'apex emmmのdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i0.hdslb.com/bfs/archive/9eca86255ef1838886b4b5f1c0662d3e9f634410.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n8',
    //   // uploadTime: DateTime.now(),
    //   title: '与仙争鸡',
    //   description: '与仙争鸡のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i2.hdslb.com/bfs/archive/be9686d5bb15d4ce330f73ee6acd0303a9170b5b.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n9',
    //   // uploadTime: DateTime.now(),
    //   title: '天桥地下的唱见',
    //   description: '天桥地下的唱见のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i2.hdslb.com/bfs/archive/bdd67d993c31ac4a9bc5054367229bad40c4000a.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
    // SingleNewsItem(
    //   id: 'n10',
    //   // uploadTime: DateTime.now(),
    //   title: '今天的李先生疲惫了',
    //   description: '今天的李先生疲惫了のdescription',
    //   likes: 6666,
    //   views: 26666,
    //   thumbnailImageUrl:
    //       'https://i2.hdslb.com/bfs/archive/a90dd608483742898f02e45ec039097446cdcd56.jpg@320w_200h.jpg',
    //   tags: ['梗', '废话', 'test'],
    // ),
  ];


  // News(this._news);

  Future<void> fetchNews() async {
    final url = Uri.parse(
        'https://project-diva-df56a-default-rtdb.asia-southeast1.firebasedatabase.app/News.json');
    try {
      final response = await http.get(url);
  
      final extractedData = json.decode(response.body) as Map<String, dynamic> ;
      // print(json.decode(response.body));
      if (extractedData == null) {
        return;
      }
      final List<SingleNewsItem> loadedNews = [];
      extractedData.forEach((newsID, newsData) {
        // print(newsData);
        loadedNews.add(SingleNewsItem(
          id: newsID,
          title: newsData['title'],
          description: newsData['description'],
          likes: newsData['likes'],
          views: newsData['views'],
          tags: List.from(newsData['tags']),
          thumbnailImageUrl: newsData['thumbnailImageUrl'],
          article_1: newsData['article_1'],
          img_1: newsData['img_1'],
          article_2: newsData['article_2'],
          img_2: newsData['img_2'],
          article_3: newsData['article_3'],
          img_3: newsData['img_3'],
          article_4: newsData['article_4'],
          img_4: newsData['img_4'],
          article_5: newsData['article_5'],
          img_5: newsData['img_5'],
        ));
      });
      _news = loadedNews;
      notifyListeners();
    } catch (error) {
      // throw (error);
    }
  }

  // Future<void> addNews(SingleNewsItem news) async {
  //   final url = Uri.parse('https://project-diva-df56a-default-rtdb.asia-southeast1.firebasedatabase.app/News.json');
  //   try {
  //     final response = await http.post(url,body: json.encode({
  //         'id': news.id,
  //         'title': news.title,
  //         'description': news.description,
  //         'likes': news.likes,
  //         'views': news.views,
  //         'tags': news.tags,
  //         'thumbnailImageUrl': news.thumbnailImageUrl,
  //       }),
  //     )
  //       .then((response) {
  //     final newNews = SingleNewsItem(
  //         id: json.decode(response.body)['name'],
  //         title: news.title,
  //         description: news.description,
  //         likes: news.likes,
  //         views: news.views,
  //         tags: news.tags,
  //         thumbnailImageUrl: news.thumbnailImageUrl,
  //     );
  //     _news.add(newNews);
  //     // _items.insert(0, newProduct); // at the start of the list
  //     notifyListeners();
  //   });
  //   } catch (error) {
  //     print(error);
  //     throw error;
  //   }
  // }
  
  List<SingleNewsItem> get getnews {
    return [..._news];
  }

  SingleNewsItem findById(String id) {
    return _news.firstWhere((news) => news.id == id);
  }
}
