import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/controllers/product_section_controller.dart';
import 'package:macbro_app/network/models/ResponseProductSection.dart';
import 'package:macbro_app/ui/main/home/widgets/item_new.dart';

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
    final ProductSectionController sectionController =
        Get.put(ProductSectionController());

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
                    fontFamily: "Sf_Pro",
                    fontWeight: FontWeight.w700,
                    fontSize: 22.sp,
                    letterSpacing: 0.35.w),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svg/ic_arrow_right.svg',
                ),
              )
            ],
          ),
        ),

        Container(
          height: 240.h,
          child: ListView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ItemNewWidget(
                name: productList[index].name,
                image: productList[index].image,
                price: productList[index].price!.price.toString(),
              );
            },
          ),
        ),

      ],
    );
  }
}
