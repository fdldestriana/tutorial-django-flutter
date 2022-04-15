import 'package:ecommerce/ui/pages/main_page/main_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/providers/product_list_provider.dart';
// import 'package:ecommerce/ui/page/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductListProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MainPage(
          text: 'Fashion sale',
        ),
      ),
    );
  }
}
