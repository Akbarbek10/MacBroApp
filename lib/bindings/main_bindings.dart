import 'package:get/get.dart';
import 'package:macbro_app/controllers/bottom_menu_controller.dart';
import 'package:macbro_app/controllers/home_controller.dart';

class MainBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<BottomMenuController>(() => BottomMenuController());
    Get.lazyPut<HomeController>(() => HomeController());
  }

}