import 'package:flutter/cupertino.dart';
import 'package:myapp/core/providers/user_provider.dart';
import 'package:myapp/core/service/web_service.dart';

class UserListProvider with ChangeNotifier {
  List<UserProvider> listUser = [];
  Future<void> getData() async {
    final results = await WebService().getData();
    listUser = results.map((e) => UserProvider(user: e)).toList();
    notifyListeners();
  }
}
