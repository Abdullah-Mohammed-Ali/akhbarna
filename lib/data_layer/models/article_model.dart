import 'package:akhbarna/data_layer/entities/article_model_entities.dart';

class ArticleModel {
  late final String? author;
  late final String? title;
  late final String? url;
  late final String? urlToImage;

  ArticleModel(
      {required this.author,
      required this.title,
      required this.url,
      required this.urlToImage});

  ArticleModel.fromEntities(ArticleEntitiesModel articleModel) {
    author = articleModel.author;
    title = articleModel.title;
    url = articleModel.url;
    urlToImage = articleModel.urlToImage;
  }
}
