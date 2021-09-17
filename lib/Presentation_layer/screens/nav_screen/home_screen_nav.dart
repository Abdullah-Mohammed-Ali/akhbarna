import 'package:akhbarna/Presentation_layer/screens/home_news_screen/home_screen.dart';
import 'package:akhbarna/Presentation_layer/screens/profile_screen/profile_screen.dart';
import 'package:akhbarna/Presentation_layer/screens/search_screen/search_screen.dart';
import 'package:flutter/material.dart';

class HomeNavScreen extends StatefulWidget {
  HomeNavScreen({Key? key}) : super(key: key);

  @override
  State<HomeNavScreen> createState() => _HomeNavScreenState();
}

class _HomeNavScreenState extends State<HomeNavScreen> {
  int currentIndex = 0;
  List screens = [HomeScreen(), SearchScreen(), ProfileScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {});
          print(index);
          currentIndex = index;
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}
