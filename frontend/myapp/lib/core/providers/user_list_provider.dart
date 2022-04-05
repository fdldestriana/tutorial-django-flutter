import 'package:flutter/cupertino.dart';
import 'package:myapp/core/providers/user_provider.dart';
import 'package:myapp/core/service/web_service.dart';

class UserListProvider with ChangeNotifier {
  List<UserProvider> _listUser = [];

  List<UserProvider> get listUser => _listUser;

  Future<void> getData() async {
    final results = await WebService().getData();
    _listUser = results.map((e) => UserProvider(user: e)).toList();
    notifyListeners();
  }
}
