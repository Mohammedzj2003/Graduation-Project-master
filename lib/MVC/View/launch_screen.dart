import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      checkLoggedIn(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: AlignmentDirectional.center,
        decoration: const BoxDecoration(color: kBackgroundColor),
        child: Text(
          'طلباتي',
          style: GoogleFonts.getFont('Almarai',
              fontSize: 24, color: Colors.white, fontStyle: FontStyle.normal),
        ),
      ),
    );
  }
}

void checkLoggedIn(BuildContext context) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isLoggedIn = preferences.getBool("isLoggedIn") ?? false;
  if (isLoggedIn) {
    Navigator.pushReplacementNamed(context, '/login');
  } else {
    Navigator.pushReplacementNamed(context, '/on_boarding_screen');
  }
}
