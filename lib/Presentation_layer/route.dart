import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/Presentation_layer/screens/home_news_screen/home_screen.dart';
import 'package:akhbarna/Presentation_layer/screens/splash.dart';
import 'package:akhbarna/constants/strings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/nav_screen/home_screen_nav.dart';

class AppRoute {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => SplashScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (_) => HomeScreen(),
        );
      case homeNavScreen:
        return MaterialPageRoute(
          builder: (_) => HomeNavScreen(),
        );
    }
  }
}
