import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:flutter/material.dart';

class WishlistListProvider with ChangeNotifier {
  final List<ProductProvider> _wishlistList = [];

  List<ProductProvider> get wishlistList => _wishlistList;

  void addToWishlist(ProductProvider product) {
    _wishlistList.add(product);
    notifyListeners();
  }

  void removeFromWishlist(ProductProvider product) {
    _wishlistList.removeAt(product.id!);
    notifyListeners();
  }
}
