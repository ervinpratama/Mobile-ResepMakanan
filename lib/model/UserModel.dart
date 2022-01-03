class UserModel {
  late int id;
  late String name;
  late String email;
  late String password;
  late String token;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.token,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    password = json['password'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'token': token,
    };
  }
}
