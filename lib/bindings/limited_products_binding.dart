import 'package:get/get.dart';
import 'package:macbro_app/controllers/limited_products_controller.dart';

class LimitedProductsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<LimitedProductsController>(() => LimitedProductsController(),fenix: true);
  }

}