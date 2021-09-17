import 'dart:math';

import 'package:akhbarna/data_layer/data_provider/web_services/news_provider.dart';
import 'package:akhbarna/data_layer/entities/article_model_entities.dart';
import 'package:akhbarna/data_layer/models/article_model.dart';

class NewsRepository {
  NewsProvider _newsProvider = NewsProvider();

  List<ArticleModel> _articles = [];

  Future<List<ArticleModel>> getTopHeadLine() async {
    try {
      List<ArticleEntitiesModel> fetchedArticles =
          await _newsProvider.getTopHeadLine();

      _articles = fetchedArticles
          .map(
            (e) => ArticleModel(
              title: e.title,
              author: e.author,
              url: e.url,
              urlToImage: e.urlToImage,
            ),
          )
          .toList();
      print(fetchedArticles.length);
      return _articles;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
}
