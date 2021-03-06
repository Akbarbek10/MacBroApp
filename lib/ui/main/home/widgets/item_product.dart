import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:macbro_app/core/theme/app_utils.dart';
import 'package:macbro_app/base/base_functions.dart';
import 'package:macbro_app/routes/app_routes.dart';
import 'package:macbro_app/ui/main/home/sub_pages/pages/product_details_page.dart';
import 'package:macbro_app/ui/main/widgets/like_btn.dart';

class ItemProductWidget extends StatelessWidget {
  final String? id;
  final String? name;
  final String? image;
  final int? price;

  const ItemProductWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int priceInSum = price! * 11525;

    return SizedBox(
      width: 152.w,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                Get.toNamed(AppRoutes.productDetails);
              },
              child: Container(
                height: 162.h,
                width: 152.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  color: Colors.white,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 24.h, horizontal: 14.w),
                        child: CachedNetworkImage(
                          imageUrl: "$image",
                        ),
                      ),
                    ),
                    Positioned(
                      top: 8.w,
                      right: 8.w,
                      child: LikeBtnWidget(
                        id: id,
                        name: name,
                        image: image,
                        price: price,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$name",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17.sp,
                      overflow: TextOverflow.ellipsis,
                      fontFamily: AppUtils.kFontFamily,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  BaseFunctions.moneyFormatSymbol(priceInSum) + " ??????",
                  style: TextStyle(
                    color: const Color(0xFF007AFF),
                    fontFamily: AppUtils.kFontFamily,
                    letterSpacing: -0.24.w,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
