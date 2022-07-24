import 'package:flutter/material.dart';

class MainColor {
  static Map<int, Color> color = {
    50: const Color.fromRGBO(136, 14, 79, .1),
    100: const Color.fromRGBO(136, 14, 79, .2),
    200: const Color.fromRGBO(136, 14, 79, .3),
    300: const Color.fromRGBO(136, 14, 79, .4),
    400: const Color.fromRGBO(136, 14, 79, .5),
    500: const Color.fromRGBO(136, 14, 79, .6),
    600: const Color.fromRGBO(136, 14, 79, .7),
    700: const Color.fromRGBO(136, 14, 79, .8),
    800: const Color.fromRGBO(136, 14, 79, .9),
    900: const Color.fromRGBO(136, 14, 79, 1),
  };

  // MaterialColor primeColor = MaterialColor(0xFFDB3022, color);
// MaterialColor accentColor = MaterialColor(0xFF337C36, MainColor.color);
}

// This list is gonna use in BottomNavigationBarCustom widget
final List<String> bottomTab = [
  'assets/images/icons/bottom_navigation_bar/home',
  'assets/images/icons/bottom_navigation_bar/shop',
  'assets/images/icons/bottom_navigation_bar/bag',
  'assets/images/icons/bottom_navigation_bar/favorites',
  'assets/images/icons/bottom_navigation_bar/profile'
];

final List<BottomNavigationBarItem> bottomNavigationBarItem = [
  // using suffix _inactive.png and activated.png is because the selected
  // icon's color doesnt changing while the button is tapped automatically
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
];
