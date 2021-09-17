import 'package:akhbarna/BLoc%20Layer/news_cubit.dart';
import 'package:akhbarna/Presentation_layer/widgets/searched_list_item/search_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cubit = NewsCubit.get(context);
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.white,
                expandedHeight: 150.0.h,
                collapsedHeight: 150,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Column(
                    children: [
                      Text(
                        'Search',
                        style: GoogleFonts.poppins(
                          fontSize: 25.sp,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Container(
                        height: 55.h,
                        child: Form(
                          child: TextFormField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  FontAwesomeIcons.search,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(22),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListView.builder(itemBuilder: (context, index) {
                if (cubit.Searchedarticles.length > 0)
                  return SearchItem(
                    articleModel: cubit.Searchedarticles[index],
                  );
                else {
                  return Container();
                }
              })
            ],
          ),
        ),
      ),
    );
  }
}
