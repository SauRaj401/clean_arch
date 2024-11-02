//binding for product
import 'package:get/get.dart';

import 'product_controllr.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductControllr>(() => ProductControllr());
  }
}
