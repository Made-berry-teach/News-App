// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:news_app/src/view_model/article_list_vmodel.dart';
import 'package:news_app/src/view_model/article_vmodel.dart';
import 'package:provider/provider.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var vm = Provider.of<ArticleListViewModel>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fresh News'),
      ),
      body: NewsList(vm: vm.list),
    );
  }
}

class NewsList extends StatelessWidget {
  const NewsList({
    Key? key,
    required this.vm,
  }) : super(key: key);

  final List<ArticleViewModel> vm;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: vm.length,
        itemBuilder: (context, index) {
          var article = vm[index];
          return ListTile(
            leading: SizedBox(
              height: 100,
              width: 100,
              child:article.urlToImage.isEmpty ? Image.asset('assets/news.jpg') : 
              Image.network(article.urlToImage, fit: BoxFit.cover,
            ),),
            title: Text(
              article.title
            ),
            subtitle: Text(article.description),
          );
        });
  }
}
