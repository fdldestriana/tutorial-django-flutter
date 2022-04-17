import 'dart:convert';
import 'package:ecommerce/core/models/product.dart';
import 'package:http/http.dart' as http;

class WebService {
  Future<Iterable<Product>> getData() async {
    // 10.0.2.2
    // 127.0.0.1
    final url = Uri.parse('http://10.0.2.2:8000/api/v1/latest-products/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Iterable body = jsonDecode(response.body);

      return body.map((e) => Product.fromJson(e)).toList();
    } else {
      throw 'Unable to get the data';
    }
  }
}
