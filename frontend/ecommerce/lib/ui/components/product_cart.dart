import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  ProductCart({Key? key, required this.productProvider}) : super(key: key);

  final SizeConfig size = SizeConfig();
  final ProductProvider productProvider;

  @override
  Widget build(BuildContext context) {
    size.init(context);
    return Container(
      width: size.getProportionWidth(164),
      height: size.getProportionHeight(260),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Stack(
        children: [
          Image.network(productProvider.thumbnail as String),
          Text(productProvider.name as String),
          // Text(productProvider.category as String),
          Text(productProvider.price as String)
        ],
      ),
      // stars widget
    );
  }
}
