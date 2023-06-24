import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';


class WelcomeHome extends StatefulWidget {
  const WelcomeHome({Key? key}) : super(key: key);

  @override
  State<WelcomeHome> createState() => _WelcomeHomeState();
}


class _WelcomeHomeState extends State<WelcomeHome> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Container(
      alignment: AlignmentDirectional.center,
      decoration: const BoxDecoration(color: kBackgroundColor),
      child: Column(
        children: [
          Text(
            'Wellcome to Home',
            style: GoogleFonts.getFont('Almarai',
                fontSize: 24, color: Colors.white, fontStyle: FontStyle.normal),
          ),

          Text(
            '',
            style: GoogleFonts.getFont('Almarai',
                fontSize: 16, color: Colors.white, fontStyle: FontStyle.normal),
          ),
        ],
      ),
    ),
  );
}



