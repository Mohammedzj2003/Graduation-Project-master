import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../back_ground/custom_shape_clippers.dart';
import '../../../constants.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            icon: const Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Icon(Icons.arrow_back_ios_new_sharp, color: Colors.white),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
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
                      'RESET NOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'RESET NOW',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.48,
                  left: 35,
                  right: 35,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email_outlined),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        // hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reset Now',
                              style: GoogleFonts.getFont('Almarai',
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontStyle: FontStyle.normal),
                            ),
                            const Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                          ],
                        )),
                    const SizedBox(height: 30.0),
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
