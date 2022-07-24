import 'package:ecommerce/core/providers/whishlist_list_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/product_provider.dart';

class FavouriteButton extends StatefulWidget {
  const FavouriteButton({Key? key, required this.productProvider})
      : super(key: key);
  final ProductProvider productProvider;

  @override
  State<FavouriteButton> createState() => _FavouriteButtonState();
}

class _FavouriteButtonState extends State<FavouriteButton> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    List<ProductProvider> wishlist =
        Provider.of<WishlistListProvider>(context).wishlistList;

    SizeConfig size = SizeConfig();
    size.init(context);

    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          primary: const Color(0xFFFFFFFF),
          fixedSize:
              Size(size.getProportionWidth(36), size.getProportionHeight(36)),
        ),
        onPressed: () {
          setState(() {
            isLove = !isLove;
            // doing validation that we are not gonna add item twice
            if (!wishlist.contains(widget.productProvider)) {
              wishlist.add(widget.productProvider);
            }
          });
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
