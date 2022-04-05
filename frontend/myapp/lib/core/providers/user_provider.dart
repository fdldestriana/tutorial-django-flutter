import 'package:myapp/core/models/users.dart';

class UserProvider {
  final User? user;

  UserProvider({required this.user});

  int get id => user!.id as int;

  String get name => user!.name as String;

  String get created => user!.created as String;
}
