import 'package:isar/isar.dart';

part 'user.g.dart';

@Collection()
class User {
  Id idUserBD = Isar.autoIncrement;
  String? username;
  String? fullename;
  String? email;
  late String access_token;
  String password = '';
  String user = '';
  String? empcodigo;

  User({
    this.username,
    this.fullename,
    this.email,
    required this.access_token,
    required this.password,
    required this.user,
    this.empcodigo,
  });

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    fullename = json['fullename'];
    email = json['email'];
    access_token = json['access_token'];
    password = json['password'] ?? password;
    user = json['user'] ?? user;
    empcodigo = json['empcodigo'];
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'fullename': fullename,
      'email': email,
      'access_token': access_token,
      'password': password,
      'user': user,
      'empcodigo': empcodigo,
    };
  }
}
