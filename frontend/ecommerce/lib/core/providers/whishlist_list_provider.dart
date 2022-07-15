import 'package:ecommerce/core/providers/product_provider.dart';
import 'package:flutter/material.dart';
import '../models/product.dart';

class WishlistListProvider with ChangeNotifier {
  List<ProductProvider> _wishlistList = [];

  List<ProductProvider> get wishlistList => _wishlistList;

  void addToWishlist(ProductProvider product) {
    _wishlistList.add(product);
    notifyListeners();
  }

  void removeFromWishlist(Product product) {
    _wishlistList.remove(product);
    notifyListeners();
  }
}
