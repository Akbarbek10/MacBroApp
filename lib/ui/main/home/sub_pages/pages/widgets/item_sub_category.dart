import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/limited_products_page.dart';

class ItemSubCategoryWidget extends StatelessWidget {
  final String? id;
  final String? name;
  final String? image;

  const ItemSubCategoryWidget({Key? key, required this.name, this.image, this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Get.to(const LimitedProductsPage(),arguments: [id,name],transition: Transition.rightToLeft,duration: const Duration(milliseconds: 150));
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        width: 166.w,
        height: 196.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 96.h,
              child: image!.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: "$image",
                    )
                  : SvgPicture.asset("assets/svg/macbro.svg"),
            ),
            SizedBox(
              height: 8.h,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  "$name ",
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                      fontSize: 17.sp,
                      fontFamily: AppUtils.kFontFamily,
                      letterSpacing: -0.41.w,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
