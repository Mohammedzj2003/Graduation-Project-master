import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

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
                    'Favorite',
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
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: const Icon(
                                          Icons.favorite,
                                          size: 22,
                                          color: Colors.red,
                                        ),
                                        onPressed: () {
                                          // print('تم الضغط على الأيقونة!');
                                        },
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Stack(children: [
                              Container(
                                height: 150, // تعيين ارتفاع ثابت للصورة
                                child: Image.asset(
                                  'images/hotel2.jpg',
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ]),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Read more',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont(
                                      'Almarai',
                                      fontSize: 16,
                                      color: Colors.blueAccent,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  Text(
                                    'title title',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont(
                                      'Almarai',
                                      fontSize: 17,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                ],
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
