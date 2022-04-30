import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/ui/components/favourite_button.dart';
import 'package:ecommerce/ui/pages/product_detail_page/product_detail_page.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key, required this.productProvider})
      : super(key: key);

  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    final SizeConfig size = SizeConfig();
    size.init(context);
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // using expanded to resolve the overflow caused by column
          Stack(children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ProductDetailPage();
                }));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                    Radius.circular(size.getProportionWidth(10))),
                child: Image.network(
                  productProvider.thumbnail as String,
                  width: size.getProportionWidth(162),
                  height: size.getProportionHeight(163),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ]),
          Text(
            productProvider.name as String,
            style: const TextStyle(fontSize: 11, color: Color(0xFF9B9B9B)),
          ),
          Text(
            '${productProvider.price}\$',
            style: const TextStyle(fontSize: 14, color: Color(0xFF222222)),
          ),
          // FavouriteButton()
        ]);
  }
}
