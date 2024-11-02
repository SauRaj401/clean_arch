import 'dart:convert';

import 'package:equatable/equatable.dart';

class ErrorResponse extends Equatable {
  final String message;

  ErrorResponse({
    required this.message,
  });

  static ErrorResponse errorResponseFromJson(String str) =>
      ErrorResponse.fromJson(json.decode(str));

  static String errorResponseToJson(ErrorResponse data) =>
      json.encode(data.toJson());

  ErrorResponse copyWith({
    String? message,
  }) =>
      ErrorResponse(
        message: message ?? this.message,
      );

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => ErrorResponse(
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
      };

  @override
  List<Object> get props => [message];
}
