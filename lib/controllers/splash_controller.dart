import 'package:get/get.dart';
import '../routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(
      const Duration(milliseconds: 1500),
          () {
        Get.offNamed(AppRoutes.main);
      },
    );
    super.onInit();
  }


}
