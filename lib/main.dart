import 'package:flutter/material.dart';
import 'package:project_graduation_flutter/MVC/View/launch_screen.dart';
import 'MVC/View/auth/check_user.dart';
import 'MVC/View/auth/foreget_password.dart';
import 'MVC/View/auth/login.dart';
import 'MVC/View/auth/register.dart';
import 'MVC/View/on_boarding.dart';
import 'MVC/View/user/bottomnavigationbar/launch_bottom_navigation_bar.dart';
import 'MVC/View/user/details_view/Reset.dart';
import 'MVC/View/user/details_view/catergory_details_screen.dart';
import 'MVC/View/user/details_view/notificatiions.dart';
import 'MVC/View/user/details_view/puch_price.dart';
import 'MVC/View/user/details_view/see_all.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/on_boarding_screen': (context) => OnboardingScreen(),
        '/login': (context) => const MyLogin(),
        '/register': (context) => const MyRegister(),
        '/forgetpassword': (context) => const ForgetPassword(),
        '/checkuser': (context) => const CheckUser(),
        '/bottom_navigation_bar': (context) => const LaunchBottomNavigationBar(),
        '/see_all': (context) =>  SeeAll(),
        '/category_details_screen': (context) =>  CategoryDetailsScreen(),
        '/price_phone': (context) =>  PricePhone(),
        '/notifications': (context) =>  Notifications(),
        '/reset': (context) =>  Reset(),
      },
    );
  }
}
