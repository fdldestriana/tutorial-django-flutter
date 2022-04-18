import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:ecommerce/ui/pages/main_page/check_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

// ignore: must_be_immutable
class BodyMainPage extends StatelessWidget {
  BodyMainPage({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final SizeConfig size;
  final String? text;
  bool productList = false;

  @override
  Widget build(BuildContext context) {
    if (!productList) {
      Provider.of<ProductListProvider>(context).getData();
      productList = true;
    }
    List<ProductProvider> data =
        Provider.of<ProductListProvider>(context, listen: false).listProducts;

    final SliverAppBar sliverAppBar = SliverAppBar(
      // set minimum height while user doesn't scrolling down
      expandedHeight: size.getProportionHeight(536),
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          text as String,
        ),
        background: Stack(children: [
          Image.asset(
            'assets/images/big_banner.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          CheckButton(size: size)
        ]),
      ),
    );
    return FutureBuilder(builder: (context, snapshot) {
      Widget sliverList;
      if (data.isNotEmpty) {
        sliverList =
            SliverList(delegate: SliverChildBuilderDelegate(((context, index) {
          return GridView.count(
            crossAxisCount: 2,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: data.map((e) => ProductCart(productProvider: e)).toList(),
          );
        })));
      } else {
        sliverList = const SliverToBoxAdapter(
          child: CircularProgressIndicator(),
        );
      }
      return CustomScrollView(slivers: [sliverAppBar, sliverList]);
    });
  }
}
