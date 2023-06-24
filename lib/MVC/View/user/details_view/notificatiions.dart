import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_graduation_flutter/constants.dart';

class Notifications extends StatelessWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: IconButton(
                      icon: ClipOval(
                        child: Container(
                          height: 35,
                          width: 35,
                          color: Colors.black,
                          child: const Icon(
                            Icons.arrow_back_ios_new_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Notifications',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28)),
                  ],
                ),
              ),
              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                // تحكم في حجم العنصر
                                children: [
                                  Text(
                                    'Title',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont(
                                      'Almarai',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),

                                  // تضيف بعض الفراغ بين العناصر
                                  Text(
                                    'Description',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont(
                                      'Almarai',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pushNamed(
                                        context, '/bottom_navigation_bar'),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'see details',
                                          style: GoogleFonts.getFont(
                                            'Almarai',
                                            fontSize: 14,
                                            color: kBackgroundColor,
                                            fontStyle: FontStyle.normal,
                                          ),
                                        ),
                                        const Icon(
                                            Icons.arrow_forward_ios_rounded, color: kBackgroundColor),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
