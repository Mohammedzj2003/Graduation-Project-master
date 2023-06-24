import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../back_ground/custom_shape_clippers.dart';
import '../../../constants.dart';

class CheckUser extends StatelessWidget {
  const CheckUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ClipPath(
                clipper: CustomLoginShapeClipper5(),
                child: Container(
                  color: kBackgroundColor,
                )),
            ClipPath(
                clipper: CustomLoginShapeClipper3(),
                child: Container(
                  color: kBackgroundColor,
                )),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 150.0),
              child: SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Are you !',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 30.0),
                    ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)),
                            backgroundColor: const MaterialStatePropertyAll(
                                kBackgroundColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              'Employer',
                              textAlign: TextAlign.center,
                              style:  GoogleFonts.getFont('Almarai',
                                  fontSize: 18,
                                  color: Colors.white,

                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.all(15)),
                            backgroundColor: const MaterialStatePropertyAll(
                                kBackgroundColor),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () {},
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [

                            Text(
                              'Customer',
                              textAlign: TextAlign.center,

                              style: GoogleFonts.getFont('Almarai',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
