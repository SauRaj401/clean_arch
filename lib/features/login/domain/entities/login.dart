import 'dart:convert';

import 'package:equatable/equatable.dart';

class Login extends Equatable {
  final String accessToken;
  final String refreshToken;
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  Login({
    required this.accessToken,
    required this.refreshToken,
    required this.id,
    required this.username,
    required this.email,
    required this.firstName,
    required this.lastName,
    required this.gender,
    required this.image,
  });

  static Login loginFromJson(String str) => Login.fromJson(json.decode(str));

  static String loginToJson(Login data) => json.encode(data.toJson());

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        accessToken: json["accessToken"],
        refreshToken: json["refreshToken"],
        id: json["id"],
        username: json["username"],
        email: json["email"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        gender: json["gender"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "refreshToken": refreshToken,
        "id": id,
        "username": username,
        "email": email,
        "firstName": firstName,
        "lastName": lastName,
        "gender": gender,
        "image": image,
      };

  @override
  List<Object> get props =>
      [accessToken, refreshToken, id, username, email, firstName, lastName];
}
