import 'package:akhbarna/data_layer/models/article_model.dart';
import 'package:flutter/material.dart';

import '../reusable_component.dart';

class SearchItem extends StatelessWidget {
  SearchItem({required ArticleModel articleModel}) {
    _articleModel = articleModel;
  }
  late final ArticleModel _articleModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        imageCheck(_articleModel.urlToImage!),
        Column(
          children: [
            Text(''),
            Text(''),
          ],
        ),
      ],
    );
  }
}
