import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CategoryModel categoryModel = ModalRoute.of(context)?.settings.arguments as CategoryModel;
    return const SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SizedBox(height: 700),


              // Container(
              //   margin: EdgeInsets.symmetric(horizontal: 15),
              //   child: ElevatedButton(
              //     style: ButtonStyle(
              //       padding: MaterialStateProperty.all<EdgeInsets>(
              //         const EdgeInsets.all(15),
              //       ),
              //       backgroundColor:
              //           MaterialStateProperty.all<Color>(kBackgroundColor),
              //       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              //         RoundedRectangleBorder(
              //           borderRadius: BorderRadius.circular(10.0),
              //         ),
              //       ),
              //     ),
              //     onPressed: () =>
              //         Navigator.pushNamed(context, '/price_phone'),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       children: [
              //         Text(
              //           'Book Now',
              //           style: GoogleFonts.getFont(
              //             'Almarai',
              //             fontSize: 18,
              //             color: Colors.white,
              //             fontStyle: FontStyle.normal,
              //           ),
              //         ),
              //         const Icon(Icons.arrow_forward_ios_rounded),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
