import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:battery/Model/cardNewsModel.dart';

Future<String> _loadNewsAsset() async{
  
}

Future loadNews() async{
  String jsonProduct = await _loadNewsAsset();
  final jsonResponse = json.decode(jsonProduct);
  News news = new News.fromJson(jsonResponse);

  print(news.recent[0].recentTitle);
  print(news.recent[0].recentImg);

  print(news.hot[0].hotTitle);
  print(news.hot[0].hotImg);
  print(news.hot[0].hotAuthor);
  print(news.hot[0].hotDate);
  print(news.hot[0].hotRead);
}
