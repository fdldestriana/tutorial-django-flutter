import 'package:flutter/material.dart';

class BottomNavigationBarMainPage extends StatelessWidget {
  BottomNavigationBarMainPage({Key? key}) : super(key: key);
  final List<String> bottomTab = [
    'assets/icons/bottom_navigation_bar/main.png',
    'assets/icons/bottom_navigation_bar/shop.png',
    'assets/icons/bottom_navigation_bar/bag.png',
    'assets/icons/bottom_navigation_bar/favorites.png',
    'assets/icons/bottom_navigation_bar/profile.png'
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Image.asset(bottomTab[0]), label: 'Home'),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[1]), label: 'Shop'),
        BottomNavigationBarItem(icon: Image.asset(bottomTab[2]), label: 'Bag'),
        BottomNavigationBarItem(
            icon: Image.asset(bottomTab[3]), label: 'Favorites'),
        BottomNavigationBarItem(
            icon: Image.asset(bottomTab[4]), label: 'Profile')
      ],
    );
  }
}
