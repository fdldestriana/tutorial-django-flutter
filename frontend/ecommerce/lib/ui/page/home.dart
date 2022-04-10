import 'package:flutter/material.dart';
import 'package:ecommerce/core/providers/product_list_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductListProvider>(context, listen: false);

    return Scaffold(
      body: FutureBuilder(
          future: provider.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done &&
                provider.listProducts.isNotEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: <Widget>[
                        Text(provider.listProducts[0].name as String),
                        Text(provider.listProducts[0].price as String),
                        Image.network(
                            provider.listProducts[0].thumbnail as String)
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          }),
    );
  }
}
