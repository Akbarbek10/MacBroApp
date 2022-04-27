import 'package:get/state_manager.dart';
import 'package:macbro_app/services/remote_services.dart';
import '../models/CategoriesModel.dart';

class CategoryController extends GetxController {
  var categoryList = <Categories>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    var categoryList = await RemoteServices.fetchCategories();
    if (categoryList != null) {
      this.categoryList.value = categoryList;
    }
  }
}
