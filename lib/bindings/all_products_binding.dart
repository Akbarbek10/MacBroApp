import 'package:get/get.dart';
import 'package:macbro_app/controllers/all_products_controller.dart';

class AllProductsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<AllProductsController>(() => AllProductsController(),fenix: true);
  }

}