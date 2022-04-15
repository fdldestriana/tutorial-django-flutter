import 'package:flutter/material.dart';

class BottomNavigationBarMainPage extends StatefulWidget {
  const BottomNavigationBarMainPage({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarMainPage> createState() =>
      _BottomNavigationBarMainPageState();
}

class _BottomNavigationBarMainPageState
    extends State<BottomNavigationBarMainPage> {
  final List<String> bottomTab = [
    'assets/images/icons/bottom_navigation_bar/home',
    'assets/images/icons/bottom_navigation_bar/shop',
    'assets/images/icons/bottom_navigation_bar/bag',
    'assets/images/icons/bottom_navigation_bar/favorites',
    'assets/images/icons/bottom_navigation_bar/profile'
  ];

  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    _selectedNavbar = index;

    setState(() {});
  }

  // using suffix _inactive.png and activated.png is because the selected
  // icon's color doesnt changing while the button is tapped automatically

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      child: BottomNavigationBar(
        // using BottomNavigationBarType.fixed is to prevent the icon shift while selected
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFFFFFF),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTab[0] + '_activated.png'),
              icon: Image.asset(bottomTab[0] + '_inactive.png'),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTab[1] + '_activated.png'),
              icon: Image.asset(bottomTab[1] + '_inactive.png'),
              label: 'Shop'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTab[2] + '_activated.png'),
              icon: Image.asset(bottomTab[2] + '_inactive.png'),
              label: 'Bag'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTab[3] + '_activated.png'),
              icon: Image.asset(bottomTab[3] + '_inactive.png'),
              label: 'Favorites'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTab[4] + '_activated.png'),
              icon: Image.asset(bottomTab[4] + '_inactive.png'),
              label: 'Profile')
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: const Color(0xFFDB3022),
        unselectedItemColor: const Color(0xFF9B9B9B),
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
