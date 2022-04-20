import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:ecommerce/ui/pages/main_page/mp_sliver_appbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

// ignore: must_be_immutable
class MPBody extends StatelessWidget {
  MPBody({
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
        Provider.of<ProductListProvider>(context, listen: false).listProducts;

    const MPSliverAppBar sliverAppBar = MPSliverAppBar();

    return FutureBuilder(builder: (context, snapshot) {
      Widget sliverList;
      if (data.isNotEmpty) {
        sliverList = SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          delegate: SliverChildBuilderDelegate(((context, index) {
            return Padding(
              padding: EdgeInsets.all(size.getProportionHeight(5)),
              child: ProductCart(productProvider: data[index]),
            );
          }), childCount: data.length),
        );
      } else {
        sliverList = const SliverToBoxAdapter(
          child: CircularProgressIndicator(),
        );
      }
      return CustomScrollView(slivers: [sliverAppBar, sliverList]);
    });
  }
}
