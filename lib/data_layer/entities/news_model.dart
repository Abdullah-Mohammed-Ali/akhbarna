import 'article_model_entities.dart';

class NewsModel {
  int? totalResults;
  List<ArticleEntitiesModel>? articles;

  NewsModel({this.totalResults, this.articles});

  NewsModel.fromJson(Map<String, dynamic> json) {
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = <ArticleEntitiesModel>[];
      json['articles'].forEach((v) {
        articles!.add(new ArticleEntitiesModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totalResults'] = this.totalResults;
    if (this.articles != null) {
      data['articles'] = this.articles!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
