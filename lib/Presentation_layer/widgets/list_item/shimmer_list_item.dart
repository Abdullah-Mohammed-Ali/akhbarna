import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/constants/strings.dart';
import 'package:akhbarna/data_layer/models/article_model.dart';
import 'package:flutter/material.dart';

import '../shimmer.dart';

class SchimmerListItem extends StatelessWidget {
  const SchimmerListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Schimmer.Rectangle(
              height: 5,
              Width: 150,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
          SizedBox(height: 18),
          Expanded(
            flex: 1,
            child: Schimmer.Rectangle(
              Width: 150,
              height: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
