class User {
  int? id;
  String? name;
  String? created;

  User({this.id, this.name, this.created});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(id: json['id'], name: json['name'], created: json['created']);
  }
}
