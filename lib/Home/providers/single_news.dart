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

  SingleNewsItem({
    required this.id,
    // required this.uploadTime,
    required this.title,
    required this.description,
    required this.likes,
    required this.views,
    required this.thumbnailImageUrl,
    required this.tags,
  });
}
