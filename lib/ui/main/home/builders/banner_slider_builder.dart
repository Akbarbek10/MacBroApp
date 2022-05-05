import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import '../widgets/banner_indicator.dart';
import '../widgets/item_banner.dart';
import '../widgets/item_banner_shimmer.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          if (controller.isLoading || controller.bannerList.isEmpty) {
            return CarouselSlider.builder(
              itemCount: 3,
              itemBuilder: (context, index, realIndex) {
                return const ItemShimmerBannerWidget();
              },
              options: CarouselOptions(
                height: 180.h,
                enlargeCenterPage: true,
              ),
            );
          } else {
            return Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  child: CarouselSlider.builder(
                      itemCount: controller.bannerList.length,
                      itemBuilder: (context, index, realIndex) {
                        return ItemBannerWidget(
                            banner: controller.bannerList[index]);
                      },
                      options: CarouselOptions(
                          autoPlay: true,
                          height: 180.h,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            controller.bannerIndicatorIndex = index;
                          })),
                ),
                Positioned(
                  child: BannerIndicator(
                    activeIndex: controller.bannerIndicatorIndex,
                    length: controller.bannerList.length,
                  ),
                  bottom: 8.h,
                ),
              ],
            );
          }
        });
  }
}
