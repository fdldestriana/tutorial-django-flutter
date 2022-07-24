import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BagPage extends StatelessWidget {
  const BagPage({Key? key}) : super(key: key);
  static const String routeName = '/bag-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bag Page"),
      ),
      body: const Center(
        child: Text("Bag Page"),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(),
    );
  }
}
