import 'package:dio/dio.dart';
import 'package:macbro_app/data/models/response_banner.dart';
import 'package:macbro_app/data/models/response_product.dart' as p;
import 'package:macbro_app/data/providers/api_client.dart';
import '../data/models/response_category.dart';
import '../data/models/response_product_section.dart';

class RemoteServices {
  static Future<List<MyBanner>?> fetchBanners() async {
    final response =
        ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await response.getBanners();

    return responseData.banners;
  }

  static Future<List<MyCategory>?> fetchCategories() async {
    final response =
        ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await response.getCategories();

    return responseData.categories;
  }

  static Future<List<ProductSection>?> fetchProductSections() async {
    final response =
        ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData = await response.getProductSections();

    return responseData.featuredLists;
  }

  static Future<List<p.Product>?> fetchProducts(
    String categoryId,
    String lang,
    int limit,
    int page,
  ) async {
    final response =
        ApiClient(Dio(BaseOptions(contentType: "application/json")));
    var responseData =
        await response.getProducts(categoryId, lang, limit, page);

    return responseData.products;
  }

}
