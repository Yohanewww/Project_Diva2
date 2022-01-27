import 'package:flutter/material.dart';

class SingleNewsItem with ChangeNotifier{
  final String id;
  // final DateTime uploadTime;
  final String title;
  final String description;
  final int likes;
  final int views;
  final String thumbnailImageUrl;
  final List<String> tags;

  final String? article_1;
  final String? img_1;
  final String? article_2;
  final String? img_2;
  final String? article_3;
  final String? img_3;
  final String? article_4;
  final String? img_4;
  final String? article_5;
  final String? img_5;

  SingleNewsItem({
    required this.id,
    // required this.uploadTime,
    required this.title,
    required this.description,
    required this.likes,
    required this.views,
    required this.thumbnailImageUrl,
    required this.tags,
    
    this.article_1,
    this.img_1,
    this.article_2,
    this.img_2,
    this.article_3,
    this.img_3,
    this.article_4,
    this.img_4,
    this.article_5,
    this.img_5

  });
}
