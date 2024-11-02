import 'package:clean_arch/features/login/presentation/login_view.dart';
import 'package:clean_arch/locator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  await setupLocator();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginView(),
    );
  }
}
