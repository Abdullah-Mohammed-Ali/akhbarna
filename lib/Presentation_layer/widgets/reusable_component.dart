import 'package:akhbarna/constants/strings.dart';
import 'package:flutter/material.dart';

Widget imageCheck(String url) {
  if (url == '') {
    return Image(
      image: AssetImage(splashImage),
    );
  } else
    return Image(
      image: NetworkImage(url),
    );
}
