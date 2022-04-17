import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/ui/pages/main_page/body_main_page.dart';
import 'package:ecommerce/ui/components/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  final String? text;

  const MainPage({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig size = SizeConfig();
    size.init(context);
    return Scaffold(
      body: BodyMainPage(size: size, text: text),
      bottomNavigationBar: const BottomNavigationBarMainPage(),
    );
  }
}
