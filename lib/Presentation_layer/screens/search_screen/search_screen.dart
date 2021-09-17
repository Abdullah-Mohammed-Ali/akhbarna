import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.w,
          vertical: 20.0.h,
        ),
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Search',
                  style: GoogleFonts.poppins(
                    fontSize: 25.sp,
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Form(
                child: TextFormField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(22),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(8.0.w),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.search,
                          color: Colors.black,
                        ),
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
            ],
          ),
        ),
      ),
    );
  }
}
