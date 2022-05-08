import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:macbro_app/core/theme/app_utils.dart';

import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/data/models/response_category.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/widgets/item_sub_category.dart';
import 'package:macbro_app/ui/main/widgets/empty_page.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';

class SubCategoryPage extends GetView<HomeController> {
  const SubCategoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    List<Children>? subCategoryList = data[0] ?? [];
    String title = data[1] ?? "";

    return Scaffold(
      appBar: MyAppBar(title),
      body:subCategoryList!=null? SafeArea(
        child: StaggeredGridView.countBuilder(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: subCategoryList.length,
        crossAxisCount: 2,
        staggeredTileBuilder: (int index) => const StaggeredTile.fit(1),
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        itemBuilder: (BuildContext context, int index) {
          return ItemSubCategoryWidget(
              id: subCategoryList[index].id,
              name: subCategoryList[index].name,
              image: subCategoryList[index].image,
          );
        },
        ),
      ):const EmptyPage(),
    );
  }
}



