import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/banner_controller.dart';
import 'package:macbro_app/controllers/category_controller.dart';
import 'package:macbro_app/controllers/product_section_controller.dart';
import 'package:macbro_app/ui/main/home/widgets/banner_indicator.dart';
import 'package:macbro_app/ui/main/home/widgets/slider_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/item_category.dart';
import 'widgets/product_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final BannerController bannerController = Get.put(BannerController());
  final CategoryController categoryController = Get.put(CategoryController());
  final ProductSectionController sectionController =
      Get.put(ProductSectionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9FD),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16.h,
                ),
                Obx(() {
                  if (bannerController.isLoading.value) {
                    return Center(
                      child: Text("Загрузка..."),
                    );
                  } else {
                    return Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          child: CarouselSlider.builder(
                              itemCount: bannerController.bannerList.length,
                              itemBuilder: (context, index, realIndex) {
                                return SliderWidget(
                                    banner: bannerController.bannerList[index]);
                              },
                              options: CarouselOptions(
                                  autoPlay: true,
                                  height: 180.h,
                                  enlargeCenterPage: true,
                                  onPageChanged: (index, reason) {
                                    bannerController
                                        .bannerIndicatorIndex.value = index;
                                  })),
                        ),
                        Positioned(
                          child: BannerIndicator(
                            activeIndex:
                                bannerController.bannerIndicatorIndex.value,
                            length: bannerController.bannerList.length,
                          ),
                          bottom: 8.h,
                        ),
                      ],
                    );
                  }
                }),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  child: Obx(() {
                    if (bannerController.isLoading.value) {
                      return Center(
                        child: Text("Загрузка..."),
                      );
                    }
                    else {
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: sectionController.productSectionList.length,
                        itemBuilder: (context, index) {
                          return ProductSectionWidget(
                            title: sectionController
                                .productSectionList[index].title,
                            productList: sectionController
                                .productSectionList[index].products!,
                          );
                        },
                      );
                    }
                  }),
                ),
                SizedBox(
                  height: 25.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Категории",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Sf_Pro",
                            fontWeight: FontWeight.w700,
                            fontSize: 22.sp,
                            letterSpacing: 0.35.w),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                      Obx(() {
                        if (categoryController.isLoading.value) {
                          return Center(
                            child: Text("Загрузка..."),
                          );
                        } else {
                          return Container(
                            padding: EdgeInsets.only(bottom: 24.h),
                            child: Obx(() => GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  scrollDirection: Axis.vertical,
                                  itemCount:
                                      categoryController.categoryList.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          crossAxisSpacing: 12.w,
                                          mainAxisSpacing: 12.h),
                                  itemBuilder: (context, index) {
                                    return ItemCategoryWidget(
                                      name: categoryController
                                          .categoryList[index].name,
                                      image: categoryController
                                          .categoryList[index].image,
                                    );
                                  },
                                )),
                          );
                        }
                      }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
