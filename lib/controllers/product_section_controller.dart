import 'package:get/state_manager.dart';
import 'package:macbro_app/service/remote_services.dart';

import '../network/models/ResponseProductSection.dart';

class ProductSectionController extends GetxController {
  var isLoading = true.obs;
  var productSectionList = <ProductSection>[].obs;

  @override
  void onInit() {
    fetchProductSections();
    super.onInit();
  }

  void fetchProductSections() async {
    try{
      isLoading(true);
      var productSectionList = await RemoteServices.fetchProductSections();
      if (productSectionList != null) {
        var newProductSectionList = [...productSectionList];
        productSectionList.forEach((section) {
          if(section.products!.length<1){
            newProductSectionList.remove(section);
          }
        });

        this.productSectionList.value = newProductSectionList;
      }
    }finally{
      isLoading(false);
    }
  }

}
