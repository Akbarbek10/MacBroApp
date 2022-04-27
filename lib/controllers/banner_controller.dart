import 'package:get/state_manager.dart';
import 'package:macbro_app/models/BannerModel.dart';
import 'package:macbro_app/services/remote_services.dart';

class BannerController extends GetxController {
  var bannerList = <Banners>[].obs;

  @override
  void onInit() {
    fetchBanners();
    super.onInit();
  }

  void fetchBanners() async {
    var bannerList = await RemoteServices.fetchBanners();
    if (bannerList != null) {
      this.bannerList.value = bannerList;
    }
  }
}
