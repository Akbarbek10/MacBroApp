import 'package:get/get.dart';
import 'package:macbro_app/bindings/main_bindings.dart';
import 'package:macbro_app/bindings/splash_binding.dart';
import 'package:macbro_app/routes/app_routes.dart';
import 'package:macbro_app/ui/main/main_page.dart';
import 'package:macbro_app/ui/splash/splash_page.dart';

class AppPages {
  AppPages._();

  static final pages = [
    GetPage(
      name: AppRoutes.initial,
      page: () => const SplashPage(),
      binding: SplashBinding()
    ),
    GetPage(
        name: AppRoutes.main,
        page: () => const MainPage(),
        binding: MainBindings()
    ),
  ];
}