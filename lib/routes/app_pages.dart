import 'package:clean_arch/features/product/product_view.dart';
import 'package:get/get.dart';

import '../features/login/presentation/login_binding.dart';
import '../features/login/presentation/login_view.dart';
import '../features/product/product_binding.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    //product
    GetPage(
      name: Routes.PRODUCT,
      page: () => ProductView(),
      binding: ProductBinding(),
    ),

    // GetPage(
    //   name: Routes.HOME,
    //   page: () => HomeView(), // Replace with actual home page
    // ),
  ];
}
