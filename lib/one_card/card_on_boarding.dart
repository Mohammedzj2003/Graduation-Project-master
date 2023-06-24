import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OneBoarding extends StatelessWidget {
  const OneBoarding({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image;
  final String title;
  final String description;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Spacer(),
          Center(

            child: Image.asset(image),
          ),
          Text(
            title,
            style: GoogleFonts.getFont('Almarai',fontSize: 24,color: Colors.white),
          ),
          const SizedBox(height: 15.0),
          Text(
            description,
            style: GoogleFonts.getFont('Almarai',fontSize: 18,color: Colors.white),
          ),
        ],
      ),
    );
  }
}
