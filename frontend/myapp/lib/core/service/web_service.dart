import 'dart:convert';
import 'package:myapp/core/models/products.dart';
import 'package:http/http.dart' as http;

class WebService {
  Future<Iterable<Products>> getData() async {
    // 'http://10.0.2.2:8000/api/v1/latest-products/'
    final url = Uri.parse('http://localhost:8000/api/v1/latest-products/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Iterable body = jsonDecode(response.body);
      print(body.toString());
      return body.map((e) => Products.fromJson(e)).toList();
    } else {
      throw 'Unable to get the data';
    }
  }
}
