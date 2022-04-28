import 'package:get/state_manager.dart';
import 'package:macbro_app/service/remote_services.dart';
import 'package:macbro_app/network/models/ResponseBanner.dart';

class BannerController extends GetxController {
  var isLoading = true.obs;
  var bannerIndicatorIndex = 0.obs;
  var bannerList = <MyBanner>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  void fetchBanners() async {
    try{
      isLoading(true);
      var bannerList = await RemoteServices.fetchBanners();
      if (bannerList != null) {
        var newBannerList = [...bannerList];
        bannerList.forEach((banner) {
          if(banner.type.toString() != "image"){
            newBannerList.remove(banner);
          }
        });
        this.bannerList.value = newBannerList;
      }
    }finally{
      isLoading(false);
    }
  }

}
