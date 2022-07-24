import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  static const String routeName = '/profile-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Page"),
      ),
      body: const Center(
        child: Text("Profile Page"),
      ),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
