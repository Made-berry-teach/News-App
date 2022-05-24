import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:news_app/src/model/article_model.dart';
import 'package:http/http.dart' as http;

class WebServices {
  Future<List<ArticleModel>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=b68e68a90afd4125a8edba60c536822c";
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var result = jsonDecode(response.body);
      Iterable list = result["articles"];
      debugPrint(list.toString());
      return list.map((e) => ArticleModel.fromJson(e)).toList();
    } else {
      throw Exception('Unable to fetch news');
    }
  }
}
