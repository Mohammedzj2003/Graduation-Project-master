import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all( 15),
                  child: IconButton(
                    icon: ClipOval(
                      child: Container(
                        height: 35,
                        width: 35,
                        color: Colors.black, // يمكنك تعديل لون الخلفية هنا
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white, // يمكنك تعديل لون الأيقونة هنا
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
                const  Spacer(),
                const Text(
                  'Most Hotels',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 6,
              physics: const AlwaysScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 140 / 220),
              itemBuilder: (context, index) {
                return Container(
                  alignment: AlignmentDirectional.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3), // تعديل الانحراف العمودي والأفقي هنا
                      ),
                    ],
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // تخصيص بيانات البطاقة هنا
                    child: Column(
                      children: [
                        SizedBox(
                          height: 25,
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(
                                  Icons.favorite_border_outlined,
                                  size: 20,
                                  color: Colors.red,
                                ),
                                onPressed: () {
                                  // print('تم الضغط على الأيقونة!');
                                },
                              ),
                              const Spacer(),
                              Container(
                                decoration: const BoxDecoration(
                                  color: kBackgroundColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                                child: SizedBox(width: 12),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'images/test1.png',
                            width: double.infinity,
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsetsDirectional.symmetric(
                              horizontal: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'title title title ',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont('Almarai',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              ),
                              const  SizedBox(height: 5),
                              Text(
                                'Deception  Deception  Deception Deception  Deception  Deception  ',
                                textAlign: TextAlign.right,
                                style: GoogleFonts.getFont('Almarai',
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      )),
    );
  }
}
