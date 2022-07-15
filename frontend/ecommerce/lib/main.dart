import 'package:ecommerce/constant.dart';
import 'package:ecommerce/ui/pages/favorites_page/favorites_page.dart';
import 'package:ecommerce/ui/pages/main_page/main_page.dart';
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
        )
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
        home: const MainPage(),
        initialRoute: MainPage.routeName,
        routes: {
          MainPage.routeName: (context) => const MainPage(),
          ProductDetailPage.routeName: (context) => const ProductDetailPage(),
          FavoritesPage.routeName: (context) => FavoritesPage()
        },
      ),
    );
  }
}
