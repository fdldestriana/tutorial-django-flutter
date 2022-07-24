import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/providers/current_index_provider.dart';
import 'package:ecommerce/ui/pages/bag_page/bag_page.dart';
import 'package:ecommerce/ui/pages/home_page/home_page.dart';
import 'package:ecommerce/ui/pages/profile_page/profile_page.dart';
import 'package:ecommerce/ui/pages/shop_page/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/favorites_page/favorites_page.dart';

class BottomNavigationBarCustom extends StatelessWidget {
  const BottomNavigationBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrentIndex provider = Provider.of<CurrentIndex>(context, listen: true);
    int currentIndex = provider.currentIndex;

    return ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12), topRight: Radius.circular(12)),
        child: BottomNavigationBar(
          // using BottomNavigationBarType.fixed is to prevent the icon shift while selected
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFFFFFFFF),
          items: bottomNavigationBarItem,
          currentIndex: currentIndex,
          onTap: (currentIndex) {
            provider.setCurrentIndex(currentIndex);
            switch (currentIndex) {
              case 0:
                Navigator.of(context).popAndPushNamed(HomePage.routeName);
                break;
              case 1:
                Navigator.of(context).popAndPushNamed(ShopPage.routeName);
                break;
              case 2:
                Navigator.of(context).popAndPushNamed(BagPage.routeName);
                break;
              case 3:
                Navigator.of(context).popAndPushNamed(FavoritesPage.routeName);
                break;
              case 4:
                Navigator.of(context).popAndPushNamed(ProfilePage.routeName);
                break;
            }
          },
        ));
  }
}
