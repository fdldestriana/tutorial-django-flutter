import 'package:ecommerce/core/models/product.dart';

class ProductProvider {
  final Product? product;

  ProductProvider({required this.product});

  int? get id => product!.id;

  String? get name => product!.name;

  String? get price => product!.price;

  String? get thumbnail => product!.thumbnail;

  String? get category => product!.category;

  double? get stars => product!.stars;

  bool? get tag => product!.tag;

  bool? get isLove => product!.isLove;
}
