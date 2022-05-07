import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:macbro_app/data/models/response_product.dart';
import 'package:retrofit/http.dart';

import '../models/response_banner.dart';
import '../models/response_category.dart';
import '../models/response_product_section.dart';

part 'api_client.g.dart';

class ApiConstants {
  static const String baseUrl = 'https://api.client.macbro.uz/v1/';
  static const String banners = '/banner';
  static const String categories = '/category';
  static const String productSections = '/featured-list';
  static const String product = '/product';
}

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET(ApiConstants.banners)
  Future<ResponseBanner> getBanners();

  @GET(ApiConstants.categories)
  Future<ResponseCategory> getCategories();

  @GET(ApiConstants.productSections)
  Future<ResponseProductSection> getProductSections();

  @GET(ApiConstants.product)
  Future<ResponseProduct> getProducts(
    @Query('category') String categoryId,
    @Query('lang') String lang,
    @Query('limit') int limit,
    @Query('page') int page,
  );
}
