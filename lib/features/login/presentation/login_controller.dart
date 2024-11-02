import 'dart:developer';

import 'package:clean_arch/locator.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../error/error_response.dart';
import '../../product/product_view.dart';
import '../data_source/model/login_response.dart';
import '../domain/use_cases/login.dart';

class LoginController extends GetxController {
  // Observables
  var isLoading = false.obs;
  var username = ''.obs;
  var password = ''.obs;

  final Login _login = locator<Login>();

  // Method to handle login
  login() async {
    if (username.isEmpty || password.isEmpty) {
      Get.snackbar('Error', 'Please enter both username and password');
      return;
    }

    isLoading.value = true;
    try {
      LoginParams params =
          LoginParams(username: username.value, password: password.value);

      Either<ErrorResponse, LoginResponse> response = await _login(params);

      log(params.toString());
      log('Response: $response');

      response.fold(
        (error) async {
          log('Error: ${error.message}');
          await Get.snackbar('Error', error.message);
        },
        (data) async {
          log('Data: $data');

          //use navigator to got to porduct view
          await Get.to(ProductView());
          // await Navigator.push(
          //     Get.context!,
          //     MaterialPageRoute(
          //       builder: (context) => ProductView(),
          //     ));
        },
      );
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
