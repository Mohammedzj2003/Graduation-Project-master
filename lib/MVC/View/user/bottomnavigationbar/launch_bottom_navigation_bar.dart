import 'package:flutter/material.dart';
import '../../../Model/bn_item.dart';
import '../bottom_view/favorite.dart';
import '../bottom_view/home_screen.dart';
import '../bottom_view/requests.dart';
import '../bottom_view/settings.dart';


class LaunchBottomNavigationBar extends StatefulWidget {
  const LaunchBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<LaunchBottomNavigationBar> createState() => _LaunchBottomNavigationBarState();
}

class _LaunchBottomNavigationBarState extends State<LaunchBottomNavigationBar> {
  int _currentIndex = 0;
  final List<BnItem> _item = <BnItem>[
    const BnItem('الرئيسية', HomeScreen()),
    const BnItem('المفضلة', Favorite()),
    const BnItem('البحث', HomeScreen()),
    const BnItem('الطلبات', Requests()),
    const BnItem('الإعدادات', Setting()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _item[_currentIndex].widget,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          // تعيين شعاع الانحناء الذي ترغب به
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.shifting,
            selectedItemColor: Colors.indigoAccent,
            // selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold ,fontSize: 15),
            unselectedItemColor: Colors.white60,
            elevation: 25,
            onTap: (int index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                label: "الرئيسية",
                backgroundColor: Colors.black,
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: "المفضلة",
                backgroundColor: Colors.black,
                icon: Icon(Icons.favorite_border_outlined),
                activeIcon: Icon(Icons.favorite),
              ),
              BottomNavigationBarItem(
                label: "البحث",
                backgroundColor: Colors.black,
                icon: Icon(Icons.search_outlined),
                activeIcon: Icon(Icons.search),
              ),
              BottomNavigationBarItem(
                label: "الطلبات",
                backgroundColor: Colors.black,
                icon: Icon(Icons.calendar_today),
                activeIcon: Icon(Icons.calendar_month),
              ),
              BottomNavigationBarItem(
                label: "الإعدادات",
                backgroundColor: Colors.black,
                icon: Icon(Icons.settings_outlined),
                activeIcon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
