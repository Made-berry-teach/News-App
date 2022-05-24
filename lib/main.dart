import 'package:flutter/material.dart';
import 'package:news_app/src/ui/pages/news_page.dart';
import 'package:news_app/src/view_model/article_list_vmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MeeNews());
}

class MeeNews extends StatelessWidget {

  const MeeNews({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeeNews',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ArticleListViewModel(),
      child: const NewsPage(),
      ),
    );
  }
}
