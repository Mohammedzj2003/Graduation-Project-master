import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_graduation_flutter/constants.dart';
import 'dart:math' as math;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  // TabController? tabController;

  @override
  void initState() {
    super.initState();
  }

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 25, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Hi Mustafa',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 25,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.notifications_active,
                            color: kBackgroundColor),
                        onPressed: () {
                          Navigator.pushNamed(context, '/notifications');
                        },
                      ),
                    ]),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Search',
                              style: GoogleFonts.getFont(
                                'Almarai',
                                fontSize: 18,
                                color: Colors.black54,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            const Icon(Icons.search, color: Colors.black54),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ClipPath(
                          clipper: MyCustomClipperLeft(),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0),
                              border:
                                  Border.all(color: Colors.orange, width: 2),
                            ),
                            child: const Material(
                              // color: Colors.lightBlue,
                              elevation: 8.0,
                              child: SizedBox(height: 80.0, width: 80.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.rotationY(math.pi),
                      // عكس العنصر على محور الـ Y
                      child: ClipPath(
                        clipper: MyCustomClipperRight(),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                            border: Border.all(color: Colors.orange, width: 2),
                          ),
                          child: const Material(
                            // color: Colors.lightBlue,
                            elevation: 8.0,
                            child: SizedBox(height: 80.0, width: 80.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/see_all'),
                      child: const Text(
                        'see All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 140,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 10,
                  shrinkWrap: true,
                  // تعيين shrinkWrap إلى true
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, '/category_details_screen');
                      },
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    icon: Icon(  isFavorite ?
                                    Icons.favorite_border_outlined :
                                    Icons.favorite_outlined ,
                                        size: 20,
                                        color: Colors.red
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        isFavorite =
                                        !isFavorite; // تغيير حالة المتغير عند الضغط على الأيقونة
                                      });
                                    },
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      color: kBackgroundColor,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        topRight: Radius.circular(15),
                                      ),
                                    ),
                                    child: const Row(
                                      children: [
                                        Icon(
                                          Icons.local_fire_department,
                                          color: Colors.red,
                                        ),
                                        Text(
                                          'Hot',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        SizedBox(width: 12),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Image.asset(
                                'images/test1.png',
                                width: double.infinity,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsetsDirectional.symmetric(
                                  horizontal: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    'title title title ',
                                    textAlign: TextAlign.right,
                                    style: GoogleFonts.getFont('Almarai',
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Discounts and offers',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/see_all'),
                      child: const Text(
                        'see All',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 140,
                child: GridView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  itemCount: 10,
                  shrinkWrap: true,
                  // تعيين shrinkWrap إلى true
                  scrollDirection: Axis.horizontal,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                      Navigator.pushNamed(
                          context, '/category_details_screen');
                    },
                      child: Container(


                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: const Offset(0, 7)),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconButton(
                                      icon: Icon(  isFavorite ?
                                        Icons.favorite_border_outlined :
                                      Icons.favorite_outlined ,
                                        size: 20,
                                        color: Colors.red
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          isFavorite =
                                              !isFavorite; // تغيير حالة المتغير عند الضغط على الأيقونة
                                        });
                                      },
                                    ),
                                    Container(
                                      decoration: const BoxDecoration(
                                        color: kBackgroundColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                      ),
                                      child: const Row(
                                        children: [
                                          Icon(
                                            Icons.local_fire_department,
                                            color: Colors.red,
                                          ),
                                          Text(
                                            'Hot',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 12),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Image.asset(
                                  'images/lounges2.jpg',
                                  width: double.infinity,
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsetsDirectional.symmetric(
                                    horizontal: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'title title title ',
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.getFont('Almarai',
                                          fontSize: 18,
                                          color: Colors.black,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                            ],
                          ),
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

class MyCustomClipperLeft extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;
    Path path = Path()
      ..lineTo(0, y)
      ..lineTo(x, y - 20.0)
      ..lineTo(x, 5)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class MyCustomClipperRight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double x = size.width;
    double y = size.height;
    Path path = Path()
      ..lineTo(0, y)
      ..lineTo(x, y - 20.0)
      ..lineTo(x, 5)
      ..lineTo(0, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
