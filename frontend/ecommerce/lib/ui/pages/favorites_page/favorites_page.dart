import 'package:ecommerce/core/providers/whishlist_list_provider.dart';
import 'package:ecommerce/ui/components/remove_favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:provider/provider.dart';

import '../../components/bottom_navigation_bar.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    Key? key,
  }) : super(key: key);
  static const String routeName = '/favorites-page';

  @override
  Widget build(BuildContext context) {
    List<ProductProvider> data =
        Provider.of<WishlistListProvider>(context).wishlistList;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites Page"),
      ),
      body: FutureBuilder(builder: (context, snapshot) {
        Widget sliverList;
        if (data.isNotEmpty) {
          sliverList = SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 24,
                crossAxisSpacing: 16,
                childAspectRatio: 1.75 / 2,
                crossAxisCount: 2),
            delegate: SliverChildBuilderDelegate(((context, index) {
              return Stack(alignment: AlignmentDirectional.topEnd, children: [
                ProductCart(
                  productProvider: data[index],
                  widthValue: 164,
                  heightValue: 260,
                ),
                UnconstrainedBox(
                    child: RemoveFavoriteButton(
                  productProvider: data[index],
                )),
              ]);
            }), childCount: data.length),
          );
        } else {
          sliverList = const SliverToBoxAdapter(
            child: Center(child: Text("There are no data to be displayed")),
          );
        }
        return CustomScrollView(slivers: [sliverList]);
      }),
      bottomNavigationBar: const BottomNavigationBarCustom(),
    );
  }
}
