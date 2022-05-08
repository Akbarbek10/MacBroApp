import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/core/theme/app_colors.dart';
import 'package:macbro_app/data/hive/boxes.dart';
import 'package:macbro_app/data/hive/product_hive_model.dart';
import 'package:macbro_app/ui/main/favourite/widgets/item_product_favourite.dart';
import 'package:macbro_app/ui/main/widgets/empty_page.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';

class FavouritePage extends GetView<HomeController>  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: MyAppBar("Избранные"),
      body: SafeArea(
        child: ValueListenableBuilder<Box<ProductHiveModel>>(
            valueListenable: Boxes.getProducts().listenable(),
            builder: (context, box, _) {
              var products = box.values.toList().cast<ProductHiveModel>();
              if (products.isEmpty) {
                return const EmptyPage();
              } else {
                return StaggeredGridView.countBuilder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: products.length,
                  crossAxisCount: 2,
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  crossAxisSpacing: 12.w,
                  mainAxisSpacing: 6.h,
                  itemBuilder: (context, index) {
                    var id = products[index].id;
                    var name = products[index].name;
                    var image = products[index].image;
                    var price = products[index].cheapestPrice;
                    return ItemProductFavouriteWidget(
                        id: id, name: name, image: image, price: price);
                  },
                  staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                );
              }
            }),
      ),
    );
  }
}
