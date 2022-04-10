import 'package:ecommerce/core/models/products.dart';

class ProductProvider {
  final Products? product;

  ProductProvider({required this.product});

  int? get id => product!.id;

  String? get name => product!.name;

  String? get price => product!.price;

  String? get thumbnail => product!.thumbnail;
}
