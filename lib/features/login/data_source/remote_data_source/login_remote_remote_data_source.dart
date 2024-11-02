import 'dart:developer';

import 'package:clean_arch/features/login/domain/entities/login.dart';
import 'package:http/http.dart' as http;

import '../model/login_response.dart';

//import here

abstract class LoginRemoteDataSource {
  Future<LoginResponse> login({
    required String username,
    required String password,
  });
}

class LoginRemoteDataSourceImpl implements LoginRemoteDataSource {
  @override
  Future<LoginResponse> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await http.post(
          Uri.parse('https://dummyjson.com/auth/login'),
          body: {'username': username, 'password': password});

      log("hitting" + response.body);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        LoginResponse loginResponse =
            LoginResponse.loginResponseFromJson(response.body);
        return loginResponse;
      }
      throw Exception("Error in fetching data");

      //use http package to make api call
      //use post method to make api call

      //use json.decode(response.body) to decode the response

      // want to use post login api https://dummyjson.com/auth/login
    } catch (e) {
      throw Exception(e);
    }
  }
}
