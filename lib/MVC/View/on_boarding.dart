import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constants.dart';
import '../../one_card/card_on_boarding.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return Row(
      children: [
        SizedBox(
          height: 10,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            margin: const EdgeInsets.symmetric(horizontal: 3.0),
            height: 6.0,
            width: isActive ? 36.0 : 12.0,
            decoration: BoxDecoration(
              color: isActive ? Colors.white : kBottomColor,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          decoration: const BoxDecoration(
            color: kBackgroundColor,
            // gradient: LinearGradient(
            //   begin: Alignment.topCenter,
            //   end: Alignment.bottomCenter,
            //   stops: [0.1, 0.4, 0.7, 0.9],
            //   colors: [
            //     Color(0xFF3594DD),
            //     Color(0xFF4563DB),
            //     Color(0xFF5036D5),
            //     Color(0xFF5B16D0),
            //   ],
            // ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  height: 600.0,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: const <Widget>[
                      OneBoarding(
                        image: 'images/test1.png',
                        title: 'سهولة الإستخدام',
                        description:
                            'يحتوي التطبيق على واجهات سهلة ومناسبة لجميع المستخدمين',
                      ),
                      OneBoarding(
                        image: 'images/test1.png',
                        title: 'تصميم عصري',
                        description:
                            'يمتلك التطبيق واجهات بتصميم مميز وبسيط ومريح للعينينذ',
                      ),
                      OneBoarding(
                        image: 'images/test1.png',
                        title: 'سريع في المهام',
                        description:
                            'يمتاز التطبيق في سرعة في تنفيذ العمليات و الأداء الكامل',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _buildPageIndicator(),
                ),
                _currentPage != _numPages - 1 ? Expanded(
                        child: Align(
                          alignment: FractionalOffset.bottomRight,
                          child: TextButton(
                            onPressed: () => print("test"),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () => _pageController.nextPage(
                                      duration:
                                          const Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      padding: const EdgeInsets.all(20),
                                      backgroundColor: Colors.black,
                                      foregroundColor:
                                          Colors.red, // <-- Splash color
                                    ),
                                    child: const Icon(Icons.navigate_next,
                                        color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ),

      bottomSheet: _currentPage == _numPages - 1
          ? Container(
              height: 50.0,
              width: double.infinity,
              color: Colors.white,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50),backgroundColor: Colors.white),
                onPressed: () {
                  saveLoggedIn(true);
                  Navigator.pushReplacementNamed(context, '/login');
                },

                child: Text('دخول',
                    style: GoogleFonts.getFont(
                      "Almarai",
                      fontSize: 22,
                      color: Colors.black,
                    )),
              ),
            )
          : null,
    );
  }
}

void saveLoggedIn(bool x) async {
  SharedPreferences preferences = await SharedPreferences.getInstance();
  preferences.setBool("isLoggedIn", x);
}
