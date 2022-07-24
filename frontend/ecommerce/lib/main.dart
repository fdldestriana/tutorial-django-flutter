import 'package:ecommerce/constant.dart';
import 'package:ecommerce/core/providers/current_index_provider.dart';
import 'package:ecommerce/ui/pages/bag_page/bag_page.dart';
import 'package:ecommerce/ui/pages/favorites_page/favorites_page.dart';
import 'package:ecommerce/ui/pages/home_page/home_page.dart';
import 'package:ecommerce/ui/pages/profile_page/profile_page.dart';
import 'package:ecommerce/ui/pages/shop_page/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/providers/product_list_provider.dart';
// import 'package:ecommerce/ui/page/home_page.dart';
import 'package:provider/provider.dart';
import 'constant.dart';
import 'core/providers/whishlist_list_provider.dart';
import 'ui/pages/product_detail_page/product_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductListProvider>(
          create: ((context) => ProductListProvider()),
        ),
        ChangeNotifierProvider<WishlistListProvider>(
          create: ((context) => WishlistListProvider()),
        ),
        ChangeNotifierProvider(create: ((context) => CurrentIndex()))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // primarySwatch expected MaterialColor, not Color
          // so making the MainColor class in the constant.dart
          // to solve the problem
          primarySwatch: MaterialColor(0xFFDB3022, MainColor.color),
        ),
        home: const HomePage(),
        initialRoute: HomePage.routeName,
        routes: {
          BagPage.routeName: (_) => const BagPage(),
          FavoritesPage.routeName: (_) => const FavoritesPage(),
          HomePage.routeName: (_) => const HomePage(),
          ProductDetailPage.routeName: (_) => const ProductDetailPage(),
          ProfilePage.routeName: (_) => const ProfilePage(),
          ShopPage.routeName: ((_) => const ShopPage())
        },
      ),
    );
  }
}
