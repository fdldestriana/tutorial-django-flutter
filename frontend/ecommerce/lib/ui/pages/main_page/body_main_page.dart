import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/ui/components/product_cart.dart';
import 'package:ecommerce/ui/pages/main_page/check_button.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../size_config.dart';

class BodyMainPage extends StatefulWidget {
  const BodyMainPage({
    Key? key,
    required this.size,
    required this.text,
  }) : super(key: key);

  final SizeConfig size;
  final String? text;

  @override
  State<BodyMainPage> createState() => _BodyMainPageState();
}

class _BodyMainPageState extends State<BodyMainPage> {
  @override
  void didChangeDependencies() {
    Provider.of<ProductListProvider>(context).getData();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final ProductListProvider provider =
        Provider.of<ProductListProvider>(context, listen: true);
    List<ProductProvider> data = provider.listProducts;

    final SliverAppBar sliverAppBar = SliverAppBar(
      // set minimum height while user doesn't scrolling down
      expandedHeight: widget.size.getProportionHeight(536),
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          widget.text as String,
        ),
        background: Stack(children: [
          Image.asset(
            'assets/images/big_banner.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          CheckButton(size: widget.size)
        ]),
      ),
    );
    return FutureBuilder<dynamic>(builder: (context, snapshot) {
      Widget sliverList;
      if (snapshot.connectionState == ConnectionState.done &&
          provider.listProducts.isNotEmpty) {
        sliverList =
            SliverList(delegate: SliverChildBuilderDelegate(((context, index) {
          return ProductCart(productProvider: data[index]);
        })));
      } else {
        sliverList = const SliverToBoxAdapter(
          child: CircularProgressIndicator(),
        );
      }

      return CustomScrollView(slivers: [sliverAppBar, sliverList]);
    });
  }
}
