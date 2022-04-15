import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNavigationBarMainPage extends StatefulWidget {
  BottomNavigationBarMainPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMainPage> createState() =>
      _BottomNavigationBarMainPageState();
}

class _BottomNavigationBarMainPageState
    extends State<BottomNavigationBarMainPage> {
  final List<String> bottomTab = [
    'assets/images/icons/bottom_navigation_bar/main.png',
    'assets/images/icons/bottom_navigation_bar/shop.png',
    'assets/images/icons/bottom_navigation_bar/bag.png',
    'assets/images/icons/bottom_navigation_bar/favorites.png',
    'assets/images/icons/bottom_navigation_bar/profile.png'
  ];

  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    _selectedNavbar = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Image.asset(bottomTab[0]), label: ''),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[1]), label: ''),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[2]), label: ''),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[3]), label: ''),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[4]), label: '')
      ],
      currentIndex: _selectedNavbar,
      selectedItemColor: const Color(0xFFDB3022),
      unselectedItemColor: const Color(0xFF9B9B9B),
      showUnselectedLabels: true,
      onTap: _changeSelectedNavBar,
    );
  }
}
