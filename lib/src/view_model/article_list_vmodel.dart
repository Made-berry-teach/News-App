import 'package:flutter/cupertino.dart';
import 'package:news_app/src/model/article_model.dart';
import 'package:news_app/src/view_model/article_vmodel.dart';
import 'package:news_app/src/web_services/web_services.dart';

class ArticleListViewModel extends ChangeNotifier {
  List<ArticleViewModel> list = <ArticleViewModel>[];

  ArticleListViewModel() {
    _populateTopNews();
  }

  Future<void> _populateTopNews() async {
    List<ArticleModel> articles = await WebServices().fetchTopHeadlines();
    list = articles.map((e) => ArticleViewModel(articleModel: e)).toList();
    notifyListeners();
  }
}
