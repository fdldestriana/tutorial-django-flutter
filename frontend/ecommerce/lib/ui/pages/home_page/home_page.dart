import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/ui/pages/home_page/hp_body.dart';
import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String routeName = '/main-page';

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return Scaffold(
      body: HPBody(size: size),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
