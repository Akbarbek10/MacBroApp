import 'package:dio/dio.dart';
import 'package:macbro_app/network/apis.dart';
import 'package:macbro_app/network/models/ResponseCategory.dart';

import '../network/models/ResponseBanner.dart';
import '../network/models/ResponseProductSection.dart';

class RemoteServices {
  static Future<List<MyBanner>?> fetchBanners() async {
    final banner = ApiBanner(Dio(BaseOptions(contentType: "application/json")));
    var result = await banner.getBanners();

    if(result!=null){
      return result.banners;
    }
    return null;
  }

  static Future<List<MyCategory>?> fetchCategories() async {
    final category = ApiBanner(Dio(BaseOptions(contentType: "application/json")));
    var result = await category.getCategories();

    if(result!=null){
      return result.categories;
    }
    return null;
  }

  static Future<List<ProductSection>?> fetchProductSections() async {
    final productSection = ApiBanner(Dio(BaseOptions(contentType: "application/json")));
    var result = await productSection.getProductSections();

    if(result!=null){
      return result.featuredLists;
    }
    return null;
  }
}