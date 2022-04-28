import 'package:dio/dio.dart';
import 'package:macbro_app/network/models/ResponseProductSection.dart';
import 'package:retrofit/http.dart';
import 'models/ResponseBanner.dart';
import 'models/ResponseCategory.dart';

part 'apis.g.dart';

class Apis {
  static const String baseUrl = 'https://api.client.macbro.uz/v1/';
  static const String banners = '/banner';
  static const String categories = '/category';
  static const String product_sections = '/featured-list';
}

@RestApi(baseUrl: Apis.baseUrl)
abstract class ApiBanner {
  factory ApiBanner(Dio dio, {String baseUrl}) = _ApiBanner;

  @GET(Apis.banners)
  Future<ResponseBanner> getBanners();

  @GET(Apis.categories)
  Future<ResponseCategory> getCategories();

  @GET(Apis.product_sections)
  Future<ResponseProductSection> getProductSections();

}