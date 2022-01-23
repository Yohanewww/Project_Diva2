import 'package:flutter/material.dart';

class SingleNewsItem {
  // final String id;
  // final DateTime uploadTime;
  // final String title;
  // final int likes;
  // final int views;
  final String thumbnailImageUrl;
  // final List<String> tags;

  SingleNewsItem({
    // required this.id,
    // required this.uploadTime,
    // required this.title,
    // required this.likes,
    // required this.views,
    required this.thumbnailImageUrl,
    // required this.tags,  
    });
}

class NewsItems {
  List<SingleNewsItem> _newsItems=[];

  List<SingleNewsItem> get newsItems {
    return [..._newsItems];
  }
}


