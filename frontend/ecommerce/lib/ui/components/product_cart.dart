import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  const ProductCart({Key? key, required this.productProvider})
      : super(key: key);

  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    final SizeConfig size = SizeConfig();
    size.init(context);
    return InkWell(
      child: ClipRRect(
        borderRadius:
            BorderRadius.all(Radius.circular(size.getProportionWidth(10))),
        child: Image.network(
          productProvider.thumbnail as String,
          width: size.getProportionWidth(162),
          height: size.getProportionHeight(281),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
