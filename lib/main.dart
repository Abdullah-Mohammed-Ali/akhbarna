import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'BLoc Layer/cubit_observer.dart';
import 'Presentation_layer/route.dart';
import 'constants/strings.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top]);
    return BlocProvider(
      create: (context) => NewsCubit()..getTopArticles(),
      child: ScreenUtilInit(
        builder: () {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              bottomNavigationBarTheme: BottomNavigationBarThemeData(
                type: BottomNavigationBarType.shifting,
                elevation: 0,
                selectedItemColor: Colors.black,
                unselectedItemColor: Colors.grey[400],
              ),
              appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: Colors.white,
                  statusBarBrightness: Brightness.dark,
                ),
              ),
              primaryColor: Colors.black,
            ),
            initialRoute: splashScreen,
            onGenerateRoute: AppRoute.generateRoute,
          );
        },
        designSize: Size(360, 800),
      ),
    );
  }
}
