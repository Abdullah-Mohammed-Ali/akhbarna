import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/Presentation_layer/screens/home_news_screen/shimmer_home_screen.dart';
import 'package:akhbarna/Presentation_layer/widgets/list_item/News_listt_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {
        // TODO: implement listener
      },

      //TODO screen for shimmer
      builder: (context, state) {
        if (state is NewsLoading) {
          print('Loading');
          return ShimmerHomeScreen();
        } else
          return SafeArea(
            child: Scaffold(
                body: Padding(
              padding: const EdgeInsets.only(
                bottom: 16.0,
                left: 8.0,
                right: 8,
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Stack(children: [
                      ColorFiltered(
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.4), BlendMode.srcATop),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image:
                                  NetworkImage(cubit.articles[0].urlToImage!),
                            ),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        bottom: 25,
                        child: Container(
                          width: MediaQuery.of(context).size.width - 25,
                          child: Text(
                            cubit.articles[0].title!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textDirection: TextDirection.rtl,
                            style: GoogleFonts.aladin(
                                fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Text(
                        ' الأخبار',
                        textDirection: TextDirection.rtl,
                        style: GoogleFonts.aladin(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return NewsListItem(
                          articleModel: cubit.articles[index + 1],
                        );
                      },
                      itemCount: cubit.articles.length - 2,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 15,
                        );
                      },
                    ),
                  ),
                ],
              ),
            )),
          );
      },
    );
  }
}
