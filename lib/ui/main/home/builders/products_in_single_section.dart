import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:macbro_app/core/theme/app_colors.dart';
import 'package:macbro_app/data/models/response_product_section.dart';
import 'package:macbro_app/ui/main/favourite/widgets/item_product_favourite.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';

class AllProductsInSectionPage extends StatelessWidget {
  const AllProductsInSectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    final List<Product> productList = data[0];
    final String? title = data[1];

    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: MyAppBar("$title"),
      body: SafeArea(
          child: StaggeredGridView.countBuilder(
            physics: const BouncingScrollPhysics(),
            itemCount: productList.length,
            crossAxisCount: 2,
            padding:
            EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
            crossAxisSpacing: 12.w,
            mainAxisSpacing: 6.h,
            itemBuilder: (context, index) {
              var id = productList[index].id;
              var name = productList[index].name;
              var image = productList[index].image;
              var price = productList[index].cheapestPrice;
              return ItemProductFavouriteWidget(
                  id: id, name: name, image: image, price: price);
            },
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          ),
      ),
    );
  }
}
