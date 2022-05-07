import 'package:get/get.dart';
import 'package:macbro_app/data/models/response_product.dart' as p;
import 'package:macbro_app/service/remote_services.dart';

class DataController extends GetxController {
  bool _isLoading = true;

  List<p.Product> _limitedProductList = <p.Product>[];
  List<p.Product> _allProductList = <p.Product>[];

  // @override
  // void onInit() {
  //   fetchLimitedProducts();
  //   fetchAllProducts();
  //   super.onInit();
  // }


  void fetchLimitedProducts(String categoryId) async {
    try{
      isLoading = true;
      var data = await RemoteServices.fetchProducts(categoryId, "ru", 8, 1);
      if(data!= null){
        _limitedProductList = data;
      }
    }finally{
      isLoading = false;
    }
  }

  void fetchAllProducts(String categoryId) async {
    try{
      isLoading = true;
      var data = await RemoteServices.fetchProducts(categoryId, "ru", 8, 1);
      if(data!= null){
        _allProductList = data;
      }
    }finally{
      isLoading = false;
    }
  }


  get isLoading => _isLoading;

  set isLoading(value) {
    _isLoading = value;
    update();
  }

  List<p.Product> get limitedProductList => _limitedProductList;

  set limitedProductList(List<p.Product> value) {
    _limitedProductList = value;
    update();
  }

  List<p.Product> get allProductList => _allProductList;

  set allProductList(List<p.Product> value) {
    _allProductList = value;
    update();
  }
}
