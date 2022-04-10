import 'package:flutter/cupertino.dart';
import 'package:myapp/core/providers/product_provider.dart';
import 'package:myapp/core/service/web_service.dart';

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
