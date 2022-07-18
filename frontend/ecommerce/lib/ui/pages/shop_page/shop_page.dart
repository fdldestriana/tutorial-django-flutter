import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);
  static const String routeName = '/shop-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shop Page"),
      ),
      body: const Center(
        child: Text("Shop Page"),
      ),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
