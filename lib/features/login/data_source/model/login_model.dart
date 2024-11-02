import 'package:equatable/equatable.dart';
import 'dart:convert';

import '../../domain/entities/login.dart';

class LoginModel extends Equatable {
  final String username;
  final String password;

  LoginModel({
    required this.username,
    required this.password,
  });

  static LoginModel loginModelFromJson(String str) =>
      LoginModel.fromJson(json.decode(str));

  static String loginModelToJson(LoginModel data) => json.encode(data.toJson());

  LoginModel copyWith({
    String? username,
    String? password,
  }) =>
      LoginModel(
        username: username ?? this.username,
        password: password ?? this.password,
      );

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        username: json["username"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "password": password,
      };

  @override
  List<Object> get props => [username, password];

  //to entity method

  //from entity method
}
