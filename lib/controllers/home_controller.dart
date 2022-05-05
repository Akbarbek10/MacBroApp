import 'package:get/get.dart';
import 'package:macbro_app/data/models/response_banner.dart';
import 'package:macbro_app/data/models/response_category.dart';
import 'package:macbro_app/service/remote_services.dart';
import '../data/models/response_product_section.dart';

class HomeController extends GetxController {
  bool _isLoading = false;
  int _bannerIndicatorIndex = 0;

  List<MyBanner> _bannerList = <MyBanner>[];
  List<MyCategory> _categoryList = <MyCategory>[];
  List<ProductSection> _productSectionList = <ProductSection>[];

  @override
  void onInit() {
    fetchBanners();
    fetchProductSections();
    fetchCategories();
    super.onInit();
  }


  void fetchBanners() async {
    try{
      isLoading = true;
      var data = await RemoteServices.fetchBanners();
      if(data!= null){
        data.removeWhere((banner) => banner.type.toString() != "image");
        // var newBannerList = [...data];
        // data.forEach((banner) {
        //   if(banner.type.toString() != "image"){
        //     newBannerList.remove(banner);
        //   }
        // });
        bannerList = data;
      }
    }finally{
      isLoading = false;
    }
  }

  void fetchCategories() async {
    try{
      isLoading = true;
      var data = await RemoteServices.fetchCategories();
      if (data != null) {
        categoryList = data;
      }
    }finally{
      isLoading = false;
    }
  }

  void fetchProductSections() async {
    try{
      isLoading = true;
      var data = await RemoteServices.fetchProductSections();
      if (data != null) {
        data.removeWhere((section) => section.products!.isEmpty);
        // var newProductSectionList = [...data];
        // data.forEach((section) {
        //   if(section.products!.isEmpty){
        //     newProductSectionList.remove(section);
        //   }
        // });

        productSectionList = data;
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

  int get bannerIndicatorIndex => _bannerIndicatorIndex;

  set bannerIndicatorIndex(int value) {
    _bannerIndicatorIndex = value;
    update();
  }

  List<MyBanner> get bannerList => _bannerList;

  set bannerList(List<MyBanner> value) {
    _bannerList = value;
    update();
  }

  List<ProductSection> get productSectionList => _productSectionList;

  set productSectionList(List<ProductSection> value) {
    _productSectionList = value;
    update();
  }

  List<MyCategory> get categoryList => _categoryList;

  set categoryList(List<MyCategory> value) {
    _categoryList = value;
    update();
  }
}
