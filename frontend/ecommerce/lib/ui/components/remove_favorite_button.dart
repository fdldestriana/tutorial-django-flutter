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
        fixedSize:
            Size(size.getProportionWidth(36), size.getProportionHeight(36)),
        primary: const Color(0xFFFFFFFF),
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
