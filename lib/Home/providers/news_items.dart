import 'package:flutter/material.dart';

class SingleNewsItem {
  final String id;
  final DateTime uploadTime;
  final String title;
  final int likes;
  final int views;
  final String thumbnailImageUrl;
  final List<String> tags;

  SingleNewsItem(
    this.id,
    this.uploadTime,
    this.title,
    this.likes,
    this.views,
    this.thumbnailImageUrl,
    this.tags,
  );
}


class NewsItems {
  List<SingleNewsItem> _newsItems=[];

  List<SingleNewsItem> get newsItems {
    return [..._newsItems];
  }
}
