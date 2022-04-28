import 'package:get/state_manager.dart';
import 'package:macbro_app/network/models/ResponseCategory.dart';
import 'package:macbro_app/service/remote_services.dart';

class CategoryController extends GetxController {
  var isLoading = true.obs;
  var categoryList = <MyCategory>[].obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  void fetchCategories() async {
    try{
      isLoading(true);
      var categoryList = await RemoteServices.fetchCategories();
      if (categoryList != null) {
        this.categoryList.value = categoryList;
      }
    }finally{
      isLoading(false);
    }
  }

}
