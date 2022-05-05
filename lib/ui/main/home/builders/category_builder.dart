import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import '../widgets/item_category.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../widgets/item_category_shimmer.dart';

class CategoryBuilder extends StatelessWidget {
  const CategoryBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        if (controller.isLoading || controller.categoryList.isEmpty) {
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: 8,
            crossAxisCount: 2,
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            itemBuilder: (BuildContext context, int index) {
              return const ItemShimmerCategoryWidget();
            },
          );
        } else {
          return StaggeredGridView.countBuilder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: controller.categoryList.length,
            crossAxisCount: 2,
            staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 12.h,
            itemBuilder: (BuildContext context, int index) {
              return ItemCategoryWidget(
                  name: controller.categoryList[index].name,
                  image: controller.categoryList[index].image,
                  children: controller.categoryList[index].children);
            },
          );
        }
      },
    );
  }
}
