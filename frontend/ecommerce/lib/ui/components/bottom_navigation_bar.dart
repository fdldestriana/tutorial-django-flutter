import 'package:ecommerce/constant.dart';
import 'package:ecommerce/ui/pages/bag_page/bag_page.dart';
import 'package:ecommerce/ui/pages/main_page/main_page.dart';
import 'package:ecommerce/ui/pages/profile_page/profile_page.dart';
import 'package:ecommerce/ui/pages/shop_page/shop_page.dart';
import 'package:flutter/material.dart';

import '../pages/favorites_page/favorites_page.dart';

class BottomNavigationBarCustom extends StatefulWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  // importing the list of bottomTab from constant.dart
  List<String> bottomTabItem = bottomTab;
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      print("${_selectedNavbar}, ${index}");
      _selectedNavbar = index;
      print("------");
      print("${_selectedNavbar}, ${index}");
    });
    switch (_selectedNavbar) {
      case 0:
        Navigator.of(context).pushReplacementNamed(MainPage.routeName);
        break;
      case 1:
        Navigator.of(context).pushReplacementNamed(ShopPage.routeName);
        break;
      case 2:
        Navigator.of(context).pushReplacementNamed(BagPage.routeName);
        break;
      case 3:
        Navigator.of(context).pushReplacementNamed(FavoritesPage.routeName);
        break;
      case 4:
        Navigator.of(context).pushReplacementNamed(ProfilePage.routeName);
        break;
    }
  }

  // using suffix _inactive.png and activated.png is because the selected
  // icon's color doesnt changing while the button is tapped automatically

  @override
  Widget build(BuildContext context) {
    // print("$_selectedNavbar");
    // print("------");
    return ClipRRect(
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      child: BottomNavigationBar(
        // using BottomNavigationBarType.fixed is to prevent the icon shift while selected
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFFFFFFF),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTabItem[0] + '_activated.png'),
              icon: Image.asset(bottomTabItem[0] + '_inactive.png'),
              label: 'Home'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTabItem[1] + '_activated.png'),
              icon: Image.asset(bottomTabItem[1] + '_inactive.png'),
              label: 'Shop'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTabItem[2] + '_activated.png'),
              icon: Image.asset(bottomTabItem[2] + '_inactive.png'),
              label: 'Bag'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTabItem[3] + '_activated.png'),
              icon: Image.asset(bottomTabItem[3] + '_inactive.png'),
              label: 'Favorites'),
          BottomNavigationBarItem(
              activeIcon: Image.asset(bottomTabItem[4] + '_activated.png'),
              icon: Image.asset(bottomTabItem[4] + '_inactive.png'),
              label: 'Profile')
        ],
        currentIndex: _selectedNavbar,
        // selectedItemColor: const Color(0xFFDB3022),
        // unselectedItemColor: const Color(0xFF9B9B9B),
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
