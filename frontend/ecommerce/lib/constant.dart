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
