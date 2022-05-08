import 'package:get/get.dart';
import 'package:macbro_app/bindings/limited_products_binding.dart';
import 'package:macbro_app/bindings/main_bindings.dart';
import 'package:macbro_app/bindings/splash_binding.dart';
import 'package:macbro_app/routes/app_routes.dart';
import 'package:macbro_app/ui/main/home/builders/products_in_single_section.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/product_details_page.dart';
import 'package:macbro_app/ui/main/home/sub_pages/sub_category_page.dart';
import 'package:macbro_app/ui/main/main_page.dart';
import 'package:macbro_app/ui/main/profile/profile_page.dart';
import 'package:macbro_app/ui/splash/splash_page.dart';
import '../bindings/all_products_binding.dart';
import '../ui/main/home/sub_pages/pages/all_products_page.dart';
import '../ui/main/home/sub_pages/pages/limited_products_page.dart';

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
    GetPage(
        name: AppRoutes.products,
        page: () => const LimitedProductsPage(),
        binding: LimitedProductsBinding()
    ),
    GetPage(
        name: AppRoutes.productsAll,
        page: () => const AllProductsPage(),
        binding: AllProductsBinding()
    ),
    GetPage(
        name: AppRoutes.allProductsInSection,
        page: () => const AllProductsInSectionPage(),
    ),
    GetPage(
      name: AppRoutes.subCategory,
      page: () => const SubCategoryPage(),
    ),
    GetPage(
      name: AppRoutes.productDetails,
      page: () => const ProductDetailsPage(),
    ),
    GetPage(
      name: AppRoutes.profile,
      page: () => const ProfilePage(),
    ),
  ];
}