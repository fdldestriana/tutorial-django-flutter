import 'package:ecommerce/core/providers/whishlist_list_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/product_provider.dart';

class RemoveFavoriteButton extends StatelessWidget {
  const RemoveFavoriteButton({Key? key, required this.productProvider})
      : super(key: key);
  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    WishlistListProvider wishlistProvider =
        Provider.of<WishlistListProvider>(context);

    SizeConfig size = SizeConfig();
    size.init(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        primary: Colors.white70,
        fixedSize:
            Size(size.getProportionWidth(26), size.getProportionHeight(26)),
      ),
      onPressed: () {
        wishlistProvider.removeFromWishlist(productProvider);
      },
      child: const Icon(
        Icons.close,
        color: Color(0XFF9B9B9B),
      ),
    );
  }
}
