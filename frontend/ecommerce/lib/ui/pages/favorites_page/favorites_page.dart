import 'package:ecommerce/core/providers/whishlist_list_provider.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    Key? key,
  }) : super(key: key);
  static const String routeName = '/favorites-page';

  @override
  Widget build(BuildContext context) {
    List<ProductProvider> data =
        Provider.of<WishlistListProvider>(context).wishlistList;

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
      return CustomScrollView(slivers: [sliverList]);
    });
  }
}
