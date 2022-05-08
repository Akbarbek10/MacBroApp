import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:macbro_app/controllers/limited_products_controller.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/routes/app_routes.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';
import 'widgets/item_product_sub_category.dart';

class LimitedProductsPage extends GetView<LimitedProductsController> {
  const LimitedProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    final String id = data[0] ?? "";
    final String? name = data[1] ?? "";


    return Scaffold(
      appBar: MyAppBar("$name"),
      body: SafeArea(
        child: GetBuilder<LimitedProductsController>(
          initState:(_){
             controller.fetchLimitedProducts(id);
          },
            builder: (controller) {
              if (controller.isLoading ||
                  controller.limitedProductList.isEmpty) {
                return const Center(
                  child: SpinKitCircle(
                    color: Colors.grey,
                  ),
                );
              } else {
                return SingleChildScrollView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.productsAll,arguments: [id,name]);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.w, vertical: 16.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            color: Colors.white,
                          ),
                          child: InkWell(
                            child: Row(
                              children: [
                                SvgPicture.asset("assets/svg/ic_arrow.svg"),
                                SizedBox(width: 16.w),
                                Expanded(
                                  child: Text(
                                    "Все продукты",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.sp,
                                        fontFamily: AppUtils.kFontFamily,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                                SizedBox(width: 16.w),
                                SvgPicture.asset(
                                    "assets/svg/ic_all_products.svg"),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: controller.limitedProductList.length,
                        crossAxisCount: 2,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.h,
                        itemBuilder: (context, index) {
                          var id = controller.limitedProductList[index].id;
                          var name = controller.limitedProductList[index].name;
                          var image =
                              controller.limitedProductList[index].image;
                          var price = controller
                              .limitedProductList[index].cheapestPrice;
                          return ItemProductSubCategoryWidget(
                              id: id, name: name, image: image, price: price);
                        },
                        staggeredTileBuilder: (index) =>
                            const StaggeredTile.fit(1),
                      ),
                    ],
                  ),
                );
              }
            }),
      ),
    );
  }
}
