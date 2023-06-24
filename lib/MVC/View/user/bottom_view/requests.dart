import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class Requests extends StatelessWidget {
  const Requests({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Requests',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/category_details_screen');
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        // تخصيص بيانات البطاقة هنا
                        child: Column(
                          children: [
                            SizedBox(
                              height: 30,
                              child: Row(
                                children: [
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.only(
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15),
                                      ),
                                    ),

                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: const Row(
                                      children: [
                                        Text(
                                          '5:00',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Stack(
                              children:[
                                Container(
                                  height: 150, // تعيين ارتفاع ثابت للصورة
                                  child: Image.asset(
                                    'images/car5.jpg',
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ]
                            ),
                            Text(
                              'Sunday | 1/1/2024 ',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.getFont(
                                'Almarai',
                                fontSize: 18,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    ),
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
