import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/home_controller.dart';
import 'package:macbro_app/ui/main/home/widgets/item_product_section.dart';
import 'package:macbro_app/ui/main/home/widgets/item_product_section_shimmer.dart';


class ProductSectionBuilder extends StatelessWidget {
  const ProductSectionBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (controller) {
          if(controller.isLoading || controller.productSectionList.isEmpty){
            var tempTitleList = ["Новинки","Скидки"];
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: tempTitleList.length,
              itemBuilder: (context, index) {
                return ProductShimmerSectionWidget(title: tempTitleList[index]);
              },
            );
          }
          else{
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: controller.productSectionList.length,
              itemBuilder: (context, index) {
                return ProductSectionWidget(
                  title: controller.productSectionList[index].title,
                  productList: controller.productSectionList[index].products!,
                );
              },
            );
          }


        });

  }
}
