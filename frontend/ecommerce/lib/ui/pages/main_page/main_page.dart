import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/ui/pages/main_page/mp_body.dart';
import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return Scaffold(
      body: MPBody(size: size),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
