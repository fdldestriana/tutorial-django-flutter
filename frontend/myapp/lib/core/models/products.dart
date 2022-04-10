class Products {
  int? id;
  String? name;
  String? price;
  String? thumbnail;

  Products({this.id, this.name, this.price, this.thumbnail});

  factory Products.fromJson(Map<String, dynamic> json) {
    return Products(
        id: json['id'],
        name: json['name'],
        price: json['price'],
        thumbnail: json['get_thumbnail']);
  }
}
