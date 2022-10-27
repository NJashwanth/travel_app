import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DisplayHeadingWidget extends StatelessWidget {
  final String categoryName;
  const DisplayHeadingWidget({Key? key, required this.categoryName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            categoryName,
            style: GoogleFonts.inter().copyWith(
              fontSize: 19,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Text(
            "See all",
            style: GoogleFonts.inter().copyWith(
              fontSize: 12,
              color: Colors.grey.withOpacity(0.9),
            ),
          )
        ],
      ),
    );
  }
}
