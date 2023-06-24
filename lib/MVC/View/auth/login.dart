import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_graduation_flutter/constants.dart';

import '../../../back_ground/custom_shape_clippers.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  //Password Field obscureText  Handler
  bool _isHidden = true;

  void _toggleVisibility() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 120.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(onPressed: () =>
                      Navigator.pushNamed(context, '/ohshooter'),
                      child: Text('Welcome Back ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont('Almarai',
                              fontSize: 28,
                              color: Colors.black,
                              fontStyle: FontStyle.normal)),


                    ),
                    Text(
                      'sing in to access your access',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Almarai',
                          fontSize: 16,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.35,
                    left: 35,
                    right: 35,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          prefixIcon: const Icon(Icons.email_outlined),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter the password';
                          } else if (value.length <= 6) {
                            return 'Password must be greater than 6 digits';
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Colors.grey.shade100,
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: _toggleVisibility,
                            icon: _isHidden
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                          ),
                          filled: true,
                          // hintText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/forgetpassword');
                            },
                            child: const Text(
                              'Forgot password ?',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30.0),
                      ElevatedButton(
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.all(15)),
                              backgroundColor: const MaterialStatePropertyAll(
                                  kBackgroundColor),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ))),
                          onPressed: () =>
                              Navigator.pushNamed(context, '/bottom_navigation_bar'),
                          child: Center(
                              child: Text(
                            'Login',
                            style: GoogleFonts.getFont('Almarai',
                                fontSize: 18,
                                color: Colors.white,
                                fontStyle: FontStyle.normal),
                          ))),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Text(
                              'New Account ? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextButton(
                              onPressed: () {
                                print('تم الضغط على الصف!');
                                Navigator.pushNamed(context, '/register');
                              },
                              child: Text('Register'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
