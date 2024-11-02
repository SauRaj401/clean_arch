import 'dart:convert';

import 'package:equatable/equatable.dart';

import '../../domain/entities/login.dart';

class LoginResponse extends Equatable {
  final String accessToken;
  final String refreshToken;
  final int id;
  final String username;
  final String email;
  final String firstName;
  final String lastName;
  final String gender;
  final String image;

  LoginResponse({
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

  static LoginResponse loginResponseFromJson(String str) =>
      LoginResponse.fromJson(json.decode(str));

  static String loginResponseToJson(LoginResponse data) =>
      json.encode(data.toJson());
  LoginResponse copyWith({
    String? accessToken,
    String? refreshToken,
    int? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
  }) =>
      LoginResponse(
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        gender: gender ?? this.gender,
        image: image ?? this.image,
      );

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
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

  //to entity method
  Login toEntity() {
    return Login(
      accessToken: this.accessToken,
      refreshToken: this.refreshToken,
      id: this.id,
      username: this.username,
      email: this.email,
      firstName: this.firstName,
      lastName: this.lastName,
      gender: this.gender,
      image: this.image,
    );
  }

  //from entity method
  static LoginResponse fromEntity(Login entity) {
    return LoginResponse(
      accessToken: entity.accessToken,
      refreshToken: entity.refreshToken,
      id: entity.id,
      username: entity.username,
      email: entity.email,
      firstName: entity.firstName,
      lastName: entity.lastName,
      gender: entity.gender,
      image: entity.image,
    );
  }
}
