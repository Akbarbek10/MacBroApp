import 'package:dio/dio.dart';
import 'package:macbro_app/data/models/response_banner.dart';
import 'package:macbro_app/data/providers/api_client.dart';
import '../data/models/response_category.dart';
import '../data/models/response_product_section.dart';


class RemoteServices {
  static Future<List<MyBanner>?> fetchBanners() async {
    final banner = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await banner.getBanners();

    return responseData.banners;
  }

  static Future<List<MyCategory>?> fetchCategories() async {
    final category = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await category.getCategories();

    return responseData.categories;
  }

  static Future<List<ProductSection>?> fetchProductSections() async {
    final productSection = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await productSection.getProductSections();

    return responseData.featuredLists;
  }
}