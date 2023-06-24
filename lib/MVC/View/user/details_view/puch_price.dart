import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../constants.dart';

class PricePhone extends StatelessWidget {
  const PricePhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all( 15),
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

            Expanded(
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Center(
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(vertical: 25),
                      child: Column(
                        mainAxisSize: MainAxisSize.min, // تحكم في حجم العنصر
                        children: [
                          TextField(
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              counterText: '0599999999 مثال',
                              prefixIcon: const Icon(Icons.phone_android),
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // تضيف بعض الفراغ بين العناصر
                          Text(
                            'Enter phone number ...',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.getFont(
                              'Almarai',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                        const EdgeInsets.all(15),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kBackgroundColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    onPressed: () =>
                        Navigator.pushNamed(context, '/bottom_navigation_bar'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Done',
                          style: GoogleFonts.getFont(
                            'Almarai',
                            fontSize: 18,
                            color: Colors.white,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // const Divider(
            //   thickness: 2,
            //   indent: 30,
            //   endIndent: 30,
            //   color: Colors.black12,
            //   height: 20,
            // ),

            const SizedBox(height: 25)
          ],
        ),
      ),
    );
  }
}
