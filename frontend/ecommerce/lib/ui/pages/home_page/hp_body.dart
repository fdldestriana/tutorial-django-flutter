import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/core/providers/product_provider.dart';

import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:ecommerce/ui/pages/home_page/hp_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../size_config.dart';

// ignore: must_be_immutable
class HPBody extends StatelessWidget {
  HPBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final SizeConfig size;
  bool productList = false;

  @override
  Widget build(BuildContext context) {
    if (!productList) {
      Provider.of<ProductListProvider>(context).getData();
      productList = true;
    }

    List<ProductProvider> data =
        Provider.of<ProductListProvider>(context).listProducts;

    const HPSliverAppBar sliverAppBar = HPSliverAppBar();

    return FutureBuilder(builder: (context, snapshot) {
      Widget sliverList;
      if (data.isNotEmpty) {
        sliverList = SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 24,
              crossAxisSpacing: 16,
              childAspectRatio: 1.75 / 2,
              crossAxisCount: 2),
          delegate: SliverChildBuilderDelegate(((context, index) {
            return ProductCart(
              productProvider: data[index],
              widthValue: 164,
              heightValue: 260,
            );
          }), childCount: data.length),
        );
      } else {
        sliverList = const SliverToBoxAdapter(
          child: Center(child: Text("There are no data to be displayed")),
        );
      }
      return CustomScrollView(slivers: [sliverAppBar, sliverList]);
    });
  }
}
