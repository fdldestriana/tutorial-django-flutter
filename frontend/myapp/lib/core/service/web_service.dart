import 'dart:convert';
import 'package:myapp/core/models/users.dart';
import 'package:http/http.dart' as http;

class WebService {
  Future<Iterable<User>> getData() async {
    final url = Uri.parse('http://127.0.0.1:8000/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      Iterable body = jsonDecode(response.body);
      return body.map((e) => User.fromJson(e)).toList();
    } else {
      throw 'Unable to get the data';
    }
  }
}
