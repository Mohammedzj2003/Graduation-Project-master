import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool _darkmode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xf7fbfbfb),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32, vertical: 106),
              child: Text(
                'Setting',
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
                width: double.infinity,
                // height: 190,
                decoration: BoxDecoration(
                  color: const Color(0xffffffff),
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
                              color: const Color(0xff745CF1),
                            ),
                            child:
                                const Icon(Icons.language, color: Colors.white),
                          ),
                        ),
                        const Text('Language'),
                        const Spacer(flex: 7),
                        const Text(
                          'En',
                          style: TextStyle(color: Color(0xffB6B6B6)),
                        ),
                        const Icon(
                          Icons.navigate_next_rounded,
                          color: Color(0xffAEAEAE),
                        ),
                        const Spacer(),
                      ],
                    ),

                    // _buildSwitchListTile('Autorize', 'test', _notificaitons, (value) {
                    //   setState(
                    //         () {
                    //       _notificaitons = value;
                    //     },
                    //   );
                    // }),

                    SwitchListTile(
                        title: const Text('Dark Mode'),
                        secondary: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 5),
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: const Color(0xffc55cf1),
                          ),
                          child: const Icon(Icons.dark_mode_outlined,
                              color: Colors.white),
                        ),
                        value: _darkmode,
                        onChanged: (bool value) {
                          setState(() {
                            _darkmode = value;
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
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: const Color(0xff5cf198),
                            ),
                            child: const Icon(Icons.mode_edit_outline_outlined,
                                color: Colors.white),
                          ),
                        ),
                        const Text('Font Size'),
                        const Spacer(flex: 7),
                        const Text('big'),
                        const Icon(
                          Icons.navigate_next_rounded,
                          color: Color(0xffAEAEAE),
                        ),
                        const Spacer(),
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
                  color: const Color(0xffffffff),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/reset');
                      },
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, '/reset');
                            },
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 21, vertical: 27),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/reset');
                                },
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: const Color(0xffF18A5C),
                                  ),
                                  child: const Icon(
                                      Icons.settings_applications_outlined,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          const Text('Advance Settings the application'),
                          const Spacer(flex: 2),
                          const Icon(Icons.navigate_next_rounded,
                              color: Colors.black38),
                          const Spacer(flex: 1),
                        ],
                      ),
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
                              color: const Color(0xffF15C5C),
                            ),
                            child: const Icon(Icons.output_rounded,
                                color: Colors.white),
                          ),
                        ),
                        const Text(
                          'Log out.',
                          style: TextStyle(color: Color(0xffFF0000)),
                        ),
                      ],
                    ),
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
