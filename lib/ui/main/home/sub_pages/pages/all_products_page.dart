import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/all_products_controller.dart';
import 'package:macbro_app/ui/main/favourite/widgets/item_product_favourite.dart';
import 'package:macbro_app/ui/main/widgets/my_app_bar.dart';


class AllProductsPage extends GetView<AllProductsController> {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var data = Get.arguments;
    final String id = data[0] ?? "";
    final String? name = data[1] ?? "";

    return Scaffold(
      appBar: MyAppBar("$name"),
      body: SafeArea(
        child: GetBuilder<AllProductsController>(
            initState:(_){
              controller.fetchAllProducts(id);
            },
            builder: (controller) {
          if (controller.isLoading || controller.allProductList.isEmpty) {
            return const Center(
              child: SpinKitCircle(
                color: Colors.grey,
              ),
            );
          } else {
            return StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              scrollDirection: Axis.vertical,
              itemCount: controller.allProductList.length,
              crossAxisCount: 2,
              crossAxisSpacing: 12.w,
              mainAxisSpacing: 12.h,
              itemBuilder: (context, index) {
                var id = controller.allProductList[index].id;
                var name = controller.allProductList[index].name;
                var image = controller.allProductList[index].image;
                var price =
                    controller.allProductList[index].cheapestPrice;
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
