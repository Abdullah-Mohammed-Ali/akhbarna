import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/Presentation_layer/screens/splash.dart';
import 'package:akhbarna/constants/strings.dart';
import 'package:akhbarna/data_layer/models/article_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../reusable_component.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({Key? key, required this.articleModel}) : super(key: key);
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: imageCheck(articleModel.urlToImage ?? ''),
            ),
          ),
          SizedBox(height: 18),
          Expanded(
            child: Container(
              width: 150,
              child: Text(
                articleModel.title!,
                maxLines: 3,
                overflow: TextOverflow.fade,
                textDirection: TextDirection.rtl,
                style: GoogleFonts.actor(fontSize: 18, letterSpacing: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
