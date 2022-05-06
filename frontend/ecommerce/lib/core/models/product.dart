import 'package:flutter/cupertino.dart';

import './size.dart';
import './color.dart';

class Product {
  int? id;
  String? name;
  String? price;
  String? thumbnail;
  String? category;
  double? stars;
  bool? tag;
  bool? isLove;
  Size size;
  Color color;

  Product(
      {this.id,
      this.name,
      this.price,
      this.thumbnail,
      this.category,
      this.stars,
      this.tag,
      this.isLove,
      this.size = Size.xl,
      this.color = Color.black});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        thumbnail: json['get_thumbnail'],
        category: json['category'],
        stars: json['stars'],
        tag: json['tag'],
        isLove: json['isLove']);
  }
}
