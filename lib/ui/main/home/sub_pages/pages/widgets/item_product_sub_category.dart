import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:macbro_app/base/base_functions.dart';
import 'package:macbro_app/core/theme/app_utils.dart';


class ItemProductSubCategoryWidget extends StatelessWidget {
  final String? id;
  final String? name;
  final String? image;
  final int? price;

  const ItemProductSubCategoryWidget({
    Key? key,
    required this.id,
    required this.name,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 165.5.w,
      height: 210.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 96.h,
            child: image != null
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
          SizedBox(
            height: 4.h,
          ),
          Text(
            BaseFunctions.moneyFormatSymbol(price ?? 0) + " сум",
            style: TextStyle(
              color: const Color(0xFF007AFF),
              fontFamily: AppUtils.kFontFamily,
              letterSpacing: -0.24.w,
              fontWeight: FontWeight.w400,
              fontSize: 15.sp,
            ),
          ),
        ],
      ),
    );
  }
}
