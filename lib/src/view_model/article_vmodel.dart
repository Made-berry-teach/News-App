import 'package:news_app/src/model/article_model.dart';



class ArticleViewModel {
  final ArticleModel _articleModel;

  ArticleViewModel({required ArticleModel articleModel})
      : _articleModel = articleModel;

  String get title {
    return _articleModel.title;
  }

  String get description {
    return _articleModel.description;
  }

  String get url {
    return _articleModel.url;
  }

  String get urlToImage {
    return _articleModel.urlToImage;
  }
}
