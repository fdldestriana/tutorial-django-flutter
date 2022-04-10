import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:ecommerce/core/service/web_service.dart';
import 'package:flutter/material.dart';

class ProductListProvider with ChangeNotifier {
  List<ProductProvider> _listProducts = [];

  List<ProductProvider> get listProducts => _listProducts;

  Future<void> getData() async {
    final results = await WebService().getData();
    print(results.toString());
    _listProducts = results.map((e) => ProductProvider(product: e)).toList();
    print(_listProducts);
    notifyListeners();
  }
}
