import 'package:ecommerce/core/providers/whishlist_list_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/product_provider.dart';

class RemoveFavoriteButton extends StatefulWidget {
  const RemoveFavoriteButton({Key? key, required this.productProvider})
      : super(key: key);
  final ProductProvider productProvider;

  @override
  State<RemoveFavoriteButton> createState() => _RemoveFavoriteButtonState();
}

class _RemoveFavoriteButtonState extends State<RemoveFavoriteButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    WishlistListProvider wishlistProvider =
        Provider.of<WishlistListProvider>(context);

    List<ProductProvider> wishlist = wishlistProvider.wishlistList;

    SizeConfig size = SizeConfig();
    size.init(context);

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            fixedSize:
                Size(size.getProportionWidth(36), size.getProportionHeight(36)),
            primary: const Color(0xFFFFFFFF),
            shape: const CircleBorder()),
        onPressed: () {
          wishlistProvider.removeFromWishlist(widget.productProvider);
        },
        child: (wishlist.contains(widget.productProvider))
            ? const ImageIcon(
                AssetImage(
                    'assets/images/icons/is_love/favorite_border_activated.png'),
                color: Color(0xFFDB3022),
              )
            : const ImageIcon(
                AssetImage(
                    'assets/images/icons/is_love/favorite_border_inactivated.png'),
                color: Color(0xFF9B9B9B)));
  }
}
