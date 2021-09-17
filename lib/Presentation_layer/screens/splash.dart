import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/constants/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      Duration(
        seconds: 2,
      ),
      () => Navigator.pushReplacementNamed(context, homeNavScreen),
    );
  }

  @override
  Widget build(BuildContext context) {
    dims(context);
    return BlocListener<NewsCubit, NewsState>(
      listenWhen: (prev, next) => prev != next,
      listener: (context, state) {
        // TODO: implement listener
        print('anything');
      },
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: AnimatedContainer(
              curve: Curves.fastOutSlowIn,
              duration: Duration(seconds: 3),
              child: Image.asset(
                splashImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void dims(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  print('my width : $width');
  print('my height : $height');
}
