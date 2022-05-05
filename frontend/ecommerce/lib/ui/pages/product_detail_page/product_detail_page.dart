import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/ui/components/options_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/favourite_button.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({Key? key}) : super(key: key);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final SizeConfig size = SizeConfig();
    size.init(context);
    final productId = ModalRoute.of(context)!.settings.arguments as int;
    final product = Provider.of<ProductListProvider>(context)
        .listProducts
        .firstWhere((product) => product.id == productId);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFFFFFFF),
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: const ImageIcon(
                AssetImage('assets/images/icons/app_bar/back.png')),
            color: const Color(0xFF222222),
          ),
          title: Center(
              child: Text(
            product.name as String,
            style: const TextStyle(color: Color(0xFF222222)),
          )),
          actions: [
            IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: const ImageIcon(
                  AssetImage('assets/images/icons/app_bar/share.png')),
              color: const Color(0xFF222222),
            ),
          ],
        ),
        body: Column(
          children: <Widget>[
            Image.network(
              product.thumbnail as String,
              width: double.infinity,
              height: size.getProportionHeight(413),
              fit: BoxFit.fitWidth,
            ),
            SizedBox(height: size.getProportionHeight(12)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                OtionsButton(),
                OtionsButton(),
                const FavouriteButton()
              ],
            ),
            SizedBox(
              height: size.getProportionHeight(22),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  product.name as String,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: size.getProportionWidth(95),
                ),
                Text(
                  product.price as String,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
