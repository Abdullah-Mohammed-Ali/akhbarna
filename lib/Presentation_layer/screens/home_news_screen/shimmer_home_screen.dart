import 'package:akhbarna/Presentation_layer/widgets/list_item/shimmer_list_item.dart';
import 'package:akhbarna/Presentation_layer/widgets/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShimmerHomeScreen extends StatelessWidget {
  const ShimmerHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Schimmer.Rectangle(
                height: 50,
                Width: double.maxFinite,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
              ),
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
                  return SchimmerListItem();
                },
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 15,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
