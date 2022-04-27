import 'package:http/http.dart' as http;
import 'package:macbro_app/models/BannerModel.dart';
import 'package:macbro_app/models/CategoriesModel.dart';


class RemoteServices {
  static var client = http.Client();

  static Future<List<Categories>?> fetchCategories() async {
    var url = "https://api.client.macbro.uz/v1/category";
    var response = await client.get(url);

    if(response.statusCode == 200){
      var jsonString = response.body;
      var productCategories = productCategoriesModelFromJson(jsonString);
      return productCategories.categories;
    }

    return null;
  }

  static Future<List<Banners>?> fetchBanners() async {
    var url = "https://api.client.macbro.uz/v1/banner";
    var response = await client.get(url);

    if(response.statusCode == 200){
      var jsonString = response.body;
      var banners = bannerModelFromJson(jsonString);
      return banners.banners;
    }

    return null;
  }
}