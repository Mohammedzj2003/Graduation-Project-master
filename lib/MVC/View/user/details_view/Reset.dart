
import 'package:flutter/material.dart';

class Reset extends StatefulWidget {
 const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  bool _notifications = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf7fbfbfb),
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32, vertical: 106),
            child: Text(
              'Reset',
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                height: 1.2175,
                color: Color(0xff000000),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // Boxxx

              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                color:const Color(0xffffffff),
                borderRadius: BorderRadius.circular(22),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1e000000),
                    offset: Offset(0, 4),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [


                  SwitchListTile(
                      title: const Text('Notifications'),
                      secondary: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: const Color(0xffc55cf1),
                        ),
                        child: const Icon(Icons.notifications_active,
                            color: Colors.white),
                      ),
                      value: _notifications,
                      onChanged: (bool value) {
                        setState(() {
                          _notifications = value;
                        });
                      }),
                  const SizedBox(height: 5),


                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21, vertical: 11),
                        child: Container(
                          // rectangle8x9B (236:95)
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:const Color(0xff8CF15C),
                          ),
                          child: const Icon(Icons.share, color: Colors.white),
                        ),
                      ),
                      const Text('Share App'),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21, vertical: 11),
                        child: Container(
                          // rectangle8x9B (236:95)
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:const Color(0xffF1805C),
                          ),
                          child:const
                              Icon(Icons.adjust_outlined, color: Colors.white),
                        ),
                      ),
                      const Text('About the application!'),
                      const Spacer(flex: 7),
                      const Icon(
                        Icons.navigate_next_rounded,
                        color: Color(0xffAEAEAE),
                      ),
                      const  Spacer()
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // Boxxx
              width: double.infinity,
              height: 190,
              decoration: BoxDecoration(
                color:const Color(0xffffffff),
                borderRadius: BorderRadius.circular(22),
                boxShadow:const [
                  BoxShadow(
                    color: Color(0x1e000000),
                    offset: Offset(0, 4),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21, vertical: 27),
                        child: Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:const Color.fromARGB(181, 213, 86, 86),
                          ),
                          child:const
                              Icon(Icons.email_outlined, color: Colors.white),
                        ),
                      ),
                      const Text('Forget the Email'),
                      const Spacer(flex: 7),
                      const Icon(
                        Icons.navigate_next_rounded,
                        color: Color(0xffAEAEAE),
                      ),
                      const Spacer()
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 21, vertical: 11),
                        child: Container(
                          // rectangle8x9B (236:95)
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color:const Color(0xffF15C5C),
                          ),
                          child:const
                              Icon(Icons.password_sharp, color: Colors.white),
                        ),
                      ),
                      const Text('Change password'),
                      const Spacer(flex: 7),
                      const Icon(
                        Icons.navigate_next_rounded,
                        color: Color(0xffAEAEAE),
                      ),
                      const Spacer()
                    ],
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
