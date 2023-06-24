import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_graduation_flutter/constants.dart';

import '../../../back_ground/custom_shape_clippers.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyRegister> {
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
          extendBodyBehindAppBar: true,

          appBar:  PreferredSize(preferredSize: const Size.fromHeight(120.0), child: AppBar(

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
          )),

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
                    Text(
                      'Welcome Back ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont('Almarai',
                          fontSize: 28,
                          color: Colors.black,
                          fontStyle: FontStyle.normal),
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
                    top: MediaQuery.of(context).size.height * 0.27,
                    left: 35,
                    right: 35,
                  ),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Full Name',
                          prefixIcon: Icon(Icons.account_circle),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
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
                          labelText: 'Phone',
                          fillColor: Colors.grey.shade100,
                          prefixIcon: const Icon(Icons.phone_android),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the password';
                                } else if (value.length <= 6) {
                                  return 'Password must be greater than 6 digits';
                                }
                                return null;
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
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter the password';
                                } else if (value.length <= 6) {
                                  return 'Password must be greater than 6 digits';
                                }
                                return null;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Re-Password',
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
                          ),
                        ],
                      ),
                      const SizedBox(height: 24.0),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: ElevatedButton(
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
                              onPressed: () =>  Navigator.pushNamed(context, '/checkuser')
                              ,
                              child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Next',
                                style: GoogleFonts.getFont('Almarai',
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontStyle: FontStyle.normal),
                              ),
                                      Icon(Icons.navigate_next)

                                    ],

                                  ))),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.popUntil(
                              context,
                              (route) =>
                                  route.settings.name == '/login');
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'New Member ? ',
                              style: TextStyle(color: Colors.black),
                            ),
                            Text(
                              'Log In',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.pushNa2med(context, 'register');
                        },
                        child: const Text(
                          'Account A Guest',
                          style: TextStyle(color: Colors.blue),
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
