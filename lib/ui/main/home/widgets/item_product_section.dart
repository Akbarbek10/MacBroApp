import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:get/get.dart';
import 'package:macbro_app/data/models/response_product_section.dart';
import 'package:macbro_app/routes/app_routes.dart';
import 'package:macbro_app/ui/main/home/builders/products_in_single_section.dart';
import 'package:macbro_app/ui/main/home/widgets/item_product.dart';

class ProductSectionWidget extends StatelessWidget {
  final String? title;
  final List<Product> productList;

  const ProductSectionWidget({
    Key? key,
    required this.title,
    required this.productList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$title",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: AppUtils.kFontFamily,
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    letterSpacing: 0.35.w),
              ),
              IconButton(
                onPressed: () {
                  Get.toNamed(AppRoutes.allProductsInSection, arguments: [productList, title]);
                },
                icon: SvgPicture.asset(
                  'assets/svg/ic_arrow_right.svg',
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 250.h,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ItemProductWidget(
                id: productList[index].id,
                name: productList[index].name,
                image: productList[index].image,
                price: productList[index].cheapestPrice,
              );
            },
          ),
        ),
      ],
    );
  }
}
